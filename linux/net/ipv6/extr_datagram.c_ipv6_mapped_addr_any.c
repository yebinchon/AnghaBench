
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {scalar_t__* s6_addr32; } ;


 scalar_t__ ipv6_addr_v4mapped (struct in6_addr const*) ;

__attribute__((used)) static bool ipv6_mapped_addr_any(const struct in6_addr *a)
{
 return ipv6_addr_v4mapped(a) && (a->s6_addr32[3] == 0);
}
