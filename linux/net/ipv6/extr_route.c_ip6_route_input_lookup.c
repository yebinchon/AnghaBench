
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct net {int dummy; } ;
struct flowi6 {int daddr; } ;
struct dst_entry {int dummy; } ;


 scalar_t__ ARPHRD_PIMREG ;
 int RT6_LOOKUP_F_IFACE ;
 struct dst_entry* fib6_rule_lookup (struct net*,struct flowi6*,struct sk_buff const*,int,int ) ;
 int ip6_pol_route_input ;
 scalar_t__ rt6_need_strict (int *) ;

struct dst_entry *ip6_route_input_lookup(struct net *net,
      struct net_device *dev,
      struct flowi6 *fl6,
      const struct sk_buff *skb,
      int flags)
{
 if (rt6_need_strict(&fl6->daddr) && dev->type != ARPHRD_PIMREG)
  flags |= RT6_LOOKUP_F_IFACE;

 return fib6_rule_lookup(net, fl6, skb, flags, ip6_pol_route_input);
}
