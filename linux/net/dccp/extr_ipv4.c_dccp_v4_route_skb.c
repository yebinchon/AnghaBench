
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_protocol; } ;
struct sk_buff {int dummy; } ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; } ;
struct net {int dummy; } ;
struct iphdr {int daddr; int saddr; } ;
struct flowi4 {int fl4_dport; int fl4_sport; int flowi4_proto; int flowi4_tos; int saddr; int daddr; int flowi4_oif; } ;
struct TYPE_2__ {int dccph_sport; int dccph_dport; } ;


 int IPSTATS_MIB_OUTNOROUTES ;
 int IP_INC_STATS (struct net*,int ) ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int RT_CONN_FLAGS (struct sock*) ;
 TYPE_1__* dccp_hdr (struct sk_buff*) ;
 int flowi4_to_flowi (struct flowi4*) ;
 int inet_iif (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct rtable* ip_route_output_flow (struct net*,struct flowi4*,struct sock*) ;
 int security_skb_classify_flow (struct sk_buff*,int ) ;

__attribute__((used)) static struct dst_entry* dccp_v4_route_skb(struct net *net, struct sock *sk,
        struct sk_buff *skb)
{
 struct rtable *rt;
 const struct iphdr *iph = ip_hdr(skb);
 struct flowi4 fl4 = {
  .flowi4_oif = inet_iif(skb),
  .daddr = iph->saddr,
  .saddr = iph->daddr,
  .flowi4_tos = RT_CONN_FLAGS(sk),
  .flowi4_proto = sk->sk_protocol,
  .fl4_sport = dccp_hdr(skb)->dccph_dport,
  .fl4_dport = dccp_hdr(skb)->dccph_sport,
 };

 security_skb_classify_flow(skb, flowi4_to_flowi(&fl4));
 rt = ip_route_output_flow(net, &fl4, sk);
 if (IS_ERR(rt)) {
  IP_INC_STATS(net, IPSTATS_MIB_OUTNOROUTES);
  return ((void*)0);
 }

 return &rt->dst;
}
