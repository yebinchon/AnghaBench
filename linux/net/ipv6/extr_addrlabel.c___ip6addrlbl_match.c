
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6addrlbl_entry {int ifindex; int addrtype; int prefixlen; int prefix; } ;
struct in6_addr {int dummy; } ;


 int ipv6_prefix_equal (struct in6_addr const*,int *,int ) ;

__attribute__((used)) static bool __ip6addrlbl_match(const struct ip6addrlbl_entry *p,
          const struct in6_addr *addr,
          int addrtype, int ifindex)
{
 if (p->ifindex && p->ifindex != ifindex)
  return 0;
 if (p->addrtype && p->addrtype != addrtype)
  return 0;
 if (!ipv6_prefix_equal(addr, &p->prefix, p->prefixlen))
  return 0;
 return 1;
}
