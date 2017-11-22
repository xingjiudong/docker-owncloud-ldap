FROM owncloud

MAINTAINER xing.jiudong@trans-cosmos.com.cn

RUN apt-get update && \
    apt-get install -y libldap2-dev && \
    apt-get clean

RUN docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/ && \
docker-php-ext-install -j$(nproc) ldap mysqli
