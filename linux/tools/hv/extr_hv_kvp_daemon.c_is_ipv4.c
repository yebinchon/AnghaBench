
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 int AF_INET ;
 int inet_pton (int ,char*,struct in_addr*) ;

__attribute__((used)) static int is_ipv4(char *addr)
{
 int ret;
 struct in_addr ipv4_addr;

 ret = inet_pton(AF_INET, addr, &ipv4_addr);

 if (ret == 1)
  return 1;
 return 0;
}
