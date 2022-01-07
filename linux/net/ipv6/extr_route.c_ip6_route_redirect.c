
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct flowi6 {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ip6rd_flowi {struct flowi6 fl6; struct in6_addr gateway; } ;
struct dst_entry {int dummy; } ;


 int RT6_LOOKUP_F_HAS_SADDR ;
 int __ip6_route_redirect ;
 struct dst_entry* fib6_rule_lookup (struct net*,struct flowi6*,struct sk_buff const*,int,int ) ;

__attribute__((used)) static struct dst_entry *ip6_route_redirect(struct net *net,
         const struct flowi6 *fl6,
         const struct sk_buff *skb,
         const struct in6_addr *gateway)
{
 int flags = RT6_LOOKUP_F_HAS_SADDR;
 struct ip6rd_flowi rdfl;

 rdfl.fl6 = *fl6;
 rdfl.gateway = *gateway;

 return fib6_rule_lookup(net, &rdfl.fl6, skb,
    flags, __ip6_route_redirect);
}
