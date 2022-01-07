
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int mark; TYPE_1__* dev; } ;
struct TYPE_6__ {TYPE_3__* dev; } ;
struct rtable {TYPE_2__ dst; } ;
struct iphdr {int daddr; int tos; int saddr; } ;
struct flowi4 {int flowi4_mark; int flowi4_iif; int flowi4_oif; int flowi4_tos; int saddr; int daddr; } ;
struct fib_result {int dummy; } ;
typedef int __be32 ;
struct TYPE_7__ {int ifindex; } ;
struct TYPE_5__ {int ifindex; } ;


 int RT_SCOPE_UNIVERSE ;
 int RT_TOS (int ) ;
 int dev_net (TYPE_3__*) ;
 scalar_t__ fib_lookup (int ,struct flowi4*,struct fib_result*,int ) ;
 int fib_result_prefsrc (int ,struct fib_result*) ;
 int inet_select_addr (TYPE_3__*,int ,int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int memcpy (int *,int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ rt_is_output_route (struct rtable*) ;
 int rt_nexthop (struct rtable*,int ) ;

void ip_rt_get_source(u8 *addr, struct sk_buff *skb, struct rtable *rt)
{
 __be32 src;

 if (rt_is_output_route(rt))
  src = ip_hdr(skb)->saddr;
 else {
  struct fib_result res;
  struct iphdr *iph = ip_hdr(skb);
  struct flowi4 fl4 = {
   .daddr = iph->daddr,
   .saddr = iph->saddr,
   .flowi4_tos = RT_TOS(iph->tos),
   .flowi4_oif = rt->dst.dev->ifindex,
   .flowi4_iif = skb->dev->ifindex,
   .flowi4_mark = skb->mark,
  };

  rcu_read_lock();
  if (fib_lookup(dev_net(rt->dst.dev), &fl4, &res, 0) == 0)
   src = fib_result_prefsrc(dev_net(rt->dst.dev), &res);
  else
   src = inet_select_addr(rt->dst.dev,
            rt_nexthop(rt, iph->daddr),
            RT_SCOPE_UNIVERSE);
  rcu_read_unlock();
 }
 memcpy(addr, &src, 4);
}
