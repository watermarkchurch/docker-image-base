#!/bin/bash

# Update all installed packages
yum -y -q update

# Setup build dependencies
yum -y -q install gcc-c++ patch readline readline-devel zlib zlib-devel
yum -y -q install libyaml-devel libffi-devel openssl-devel make
yum -y -q install bzip2 autoconf automake libtool bison iconv-devel
yum -y -q install openssl openssl-devel

# Install tools
yum -y -q install less vim tree curl

# Cleanup
yum clean all

rm -rf /build
rm -rf /tmp/*

