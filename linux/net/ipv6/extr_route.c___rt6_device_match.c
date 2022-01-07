
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct fib6_nh {int fib_nh_flags; struct net_device* fib_nh_dev; } ;


 int RT6_LOOKUP_F_IFACE ;
 int RTNH_F_DEAD ;
 scalar_t__ ipv6_chk_addr (struct net*,struct in6_addr const*,struct net_device const*,int) ;

__attribute__((used)) static bool __rt6_device_match(struct net *net, const struct fib6_nh *nh,
          const struct in6_addr *saddr, int oif, int flags)
{
 const struct net_device *dev;

 if (nh->fib_nh_flags & RTNH_F_DEAD)
  return 0;

 dev = nh->fib_nh_dev;
 if (oif) {
  if (dev->ifindex == oif)
   return 1;
 } else {
  if (ipv6_chk_addr(net, saddr, dev,
      flags & RT6_LOOKUP_F_IFACE))
   return 1;
 }

 return 0;
}
