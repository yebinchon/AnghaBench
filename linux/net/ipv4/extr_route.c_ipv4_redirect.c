
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int tos; } ;
struct flowi4 {int dummy; } ;


 int IS_ERR (struct rtable*) ;
 int RT_TOS (int ) ;
 int __build_flow_key (struct net*,struct flowi4*,int *,struct iphdr const*,int,int ,int ,int ,int ) ;
 int __ip_do_redirect (struct rtable*,struct sk_buff*,struct flowi4*,int) ;
 struct rtable* __ip_route_output_key (struct net*,struct flowi4*) ;
 int ip_rt_put (struct rtable*) ;

void ipv4_redirect(struct sk_buff *skb, struct net *net,
     int oif, u8 protocol)
{
 const struct iphdr *iph = (const struct iphdr *) skb->data;
 struct flowi4 fl4;
 struct rtable *rt;

 __build_flow_key(net, &fl4, ((void*)0), iph, oif,
    RT_TOS(iph->tos), protocol, 0, 0);
 rt = __ip_route_output_key(net, &fl4);
 if (!IS_ERR(rt)) {
  __ip_do_redirect(rt, skb, &fl4, 0);
  ip_rt_put(rt);
 }
}
