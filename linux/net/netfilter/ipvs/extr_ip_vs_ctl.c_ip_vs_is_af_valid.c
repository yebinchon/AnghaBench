
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ ipv6_mod_enabled () ;

__attribute__((used)) static bool ip_vs_is_af_valid(int af)
{
 if (af == AF_INET)
  return 1;




 return 0;
}
