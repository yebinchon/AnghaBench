
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_LOOPBACK ;
 int ipv6_addr_type (struct in6_addr const*) ;

__attribute__((used)) static bool addr_is_local(const struct in6_addr *addr)
{
 return ipv6_addr_type(addr) &
  (IPV6_ADDR_LINKLOCAL | IPV6_ADDR_LOOPBACK);
}
