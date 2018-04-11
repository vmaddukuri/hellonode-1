# use a node base image
FROM vijaymaddukuri/maven:latest

ENV http_proxy=10.131.236.9:3128 https_proxy=10.131.236.9:3128 LANG=en_US.UTF-8

RUN wget https://services.gradle.org/distributions/gradle-3.4.1-bin.zip -e use_proxy=yes -e http_proxy=10.131.236.9:3128

RUN sudo mkdir /opt/gradle

RUN sudo unzip -d /opt/gradle gradle-3.4.1-bin.zip

RUN echo "export PATH=$PATH:/opt/gradle/gradle-3.4.1/bin" >> /home/jenkins/.bashrc
