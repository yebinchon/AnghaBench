
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
typedef scalar_t__ u8 ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ INEXACT_PREFIXLEN_IPV4 ;
 scalar_t__ INEXACT_PREFIXLEN_IPV6 ;
 scalar_t__ xfrm_addr_any (int const*,int) ;

__attribute__((used)) static bool xfrm_pol_inexact_addr_use_any_list(const xfrm_address_t *addr,
            int family, u8 prefixlen)
{
 if (xfrm_addr_any(addr, family))
  return 1;

 if (family == AF_INET6 && prefixlen < INEXACT_PREFIXLEN_IPV6)
  return 1;

 if (family == AF_INET && prefixlen < INEXACT_PREFIXLEN_IPV4)
  return 1;

 return 0;
}
