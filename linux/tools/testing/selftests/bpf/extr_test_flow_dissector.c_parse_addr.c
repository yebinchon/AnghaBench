
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int error (int,int ,char*) ;
 int inet_pton (int,char const*,void*) ;

__attribute__((used)) static void parse_addr(int family, void *addr, const char *optarg)
{
 int ret;

 ret = inet_pton(family, optarg, addr);
 if (ret == -1)
  error(1, errno, "inet_pton");
 if (ret == 0)
  error(1, 0, "inet_pton: bad string");
}
