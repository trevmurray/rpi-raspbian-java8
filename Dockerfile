# DOCKER-VERSION 1.0.0
FROM resin/rpi-raspbian

# install required packages
RUN apt-get update
RUN apt-get install -y wget dialog
 
# install java 8
RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u33-b05/jdk-8u33-linux-arm-vfp-hflt.tar.gz
RUN tar -xzf /jdk-8u33-linux-arm-vfp-hflt.tar.gz
RUN rm jdk-8u33-linux-arm-vfp-hflt.tar.gz
RUN mv /jdk1.8.0_33 /usr/local/jdk1.8.0
ENV PATH /usr/local/jdk1.8.0/bin:$PATH
