
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int IPV6_ADDR_UNICAST ;
 int ipv6_addr_type (struct in6_addr const*) ;

__attribute__((used)) static bool rpfilter_addr_unicast(const struct in6_addr *addr)
{
 int addr_type = ipv6_addr_type(addr);
 return addr_type & IPV6_ADDR_UNICAST;
}
