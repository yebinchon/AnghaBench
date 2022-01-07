
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rt6_info {int dummy; } ;
struct net {int dummy; } ;
struct flowi6 {int flowi6_oif; } ;
struct fib6_table {int dummy; } ;


 struct rt6_info* ip6_pol_route (struct net*,struct fib6_table*,int ,struct flowi6*,struct sk_buff const*,int) ;

__attribute__((used)) static struct rt6_info *ip6_pol_route_output(struct net *net,
          struct fib6_table *table,
          struct flowi6 *fl6,
          const struct sk_buff *skb,
          int flags)
{
 return ip6_pol_route(net, table, fl6->flowi6_oif, fl6, skb, flags);
}
