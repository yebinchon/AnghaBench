
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dev; } ;
struct net {int dummy; } ;
struct iphdr {int tos; int saddr; int daddr; } ;


 int NET_RX_DROP ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_route_input_noref (struct sk_buff*,int ,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_dst (struct sk_buff*) ;
 int xfrm4_rcv_encap_finish2 ;
 scalar_t__ xfrm_trans_queue (struct sk_buff*,int ) ;

__attribute__((used)) static inline int xfrm4_rcv_encap_finish(struct net *net, struct sock *sk,
      struct sk_buff *skb)
{
 if (!skb_dst(skb)) {
  const struct iphdr *iph = ip_hdr(skb);

  if (ip_route_input_noref(skb, iph->daddr, iph->saddr,
      iph->tos, skb->dev))
   goto drop;
 }

 if (xfrm_trans_queue(skb, xfrm4_rcv_encap_finish2))
  goto drop;

 return 0;
drop:
 kfree_skb(skb);
 return NET_RX_DROP;
}
