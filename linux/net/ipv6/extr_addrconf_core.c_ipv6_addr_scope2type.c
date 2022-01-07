
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IPV6_ADDR_LINKLOCAL ;
 unsigned int IPV6_ADDR_LOOPBACK ;



 unsigned int IPV6_ADDR_SCOPE_TYPE (int const) ;
 unsigned int IPV6_ADDR_SITELOCAL ;

__attribute__((used)) static inline unsigned int ipv6_addr_scope2type(unsigned int scope)
{
 switch (scope) {
 case 129:
  return (IPV6_ADDR_SCOPE_TYPE(129) |
   IPV6_ADDR_LOOPBACK);
 case 130:
  return (IPV6_ADDR_SCOPE_TYPE(130) |
   IPV6_ADDR_LINKLOCAL);
 case 128:
  return (IPV6_ADDR_SCOPE_TYPE(128) |
   IPV6_ADDR_SITELOCAL);
 }
 return IPV6_ADDR_SCOPE_TYPE(scope);
}
