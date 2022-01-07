
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int mark; scalar_t__ data; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int tos; } ;
struct flowi4 {int dummy; } ;


 int IP4_REPLY_MARK (struct net*,int ) ;
 int IS_ERR (struct rtable*) ;
 int RT_TOS (int ) ;
 int __build_flow_key (struct net*,struct flowi4*,int *,struct iphdr const*,int,int ,int ,int ,int ) ;
 struct rtable* __ip_route_output_key (struct net*,struct flowi4*) ;
 int __ip_rt_update_pmtu (struct rtable*,struct flowi4*,int ) ;
 int ip_rt_put (struct rtable*) ;

void ipv4_update_pmtu(struct sk_buff *skb, struct net *net, u32 mtu,
        int oif, u8 protocol)
{
 const struct iphdr *iph = (const struct iphdr *) skb->data;
 struct flowi4 fl4;
 struct rtable *rt;
 u32 mark = IP4_REPLY_MARK(net, skb->mark);

 __build_flow_key(net, &fl4, ((void*)0), iph, oif,
    RT_TOS(iph->tos), protocol, mark, 0);
 rt = __ip_route_output_key(net, &fl4);
 if (!IS_ERR(rt)) {
  __ip_rt_update_pmtu(rt, &fl4, mtu);
  ip_rt_put(rt);
 }
}
