FROM php:7.2-fpm-alpine

RUN apk update && apk add curl && curl -sS https://getcomposer.org/installer | php \
  && chmod +x composer.phar && mv composer.phar /usr/local/bin/composer

RUN docker-php-ext-install pdo pdo_mysql

