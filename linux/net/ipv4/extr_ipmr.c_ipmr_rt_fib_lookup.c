
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int mark; TYPE_1__* dev; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct mr_table {int dummy; } ;
struct iphdr {int tos; int saddr; int daddr; } ;
struct flowi4 {int flowi4_mark; int flowi4_iif; int flowi4_oif; int flowi4_tos; int saddr; int daddr; } ;
struct TYPE_2__ {int ifindex; } ;


 struct mr_table* ERR_PTR (int) ;
 int LOOPBACK_IFINDEX ;
 int RT_TOS (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ipmr_fib_lookup (struct net*,struct flowi4*,struct mr_table**) ;
 int rt_is_output_route (struct rtable*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

__attribute__((used)) static struct mr_table *ipmr_rt_fib_lookup(struct net *net, struct sk_buff *skb)
{
 struct rtable *rt = skb_rtable(skb);
 struct iphdr *iph = ip_hdr(skb);
 struct flowi4 fl4 = {
  .daddr = iph->daddr,
  .saddr = iph->saddr,
  .flowi4_tos = RT_TOS(iph->tos),
  .flowi4_oif = (rt_is_output_route(rt) ?
          skb->dev->ifindex : 0),
  .flowi4_iif = (rt_is_output_route(rt) ?
          LOOPBACK_IFINDEX :
          skb->dev->ifindex),
  .flowi4_mark = skb->mark,
 };
 struct mr_table *mrt;
 int err;

 err = ipmr_fib_lookup(net, &fl4, &mrt);
 if (err)
  return ERR_PTR(err);
 return mrt;
}
