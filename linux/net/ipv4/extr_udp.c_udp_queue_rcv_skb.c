
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_skb_cb {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dev; struct sk_buff* next; } ;


 int BUILD_BUG_ON (int) ;
 int SKB_SGO_CB_OFFSET ;
 int __skb_pull (struct sk_buff*,int ) ;
 int __skb_push (struct sk_buff*,int ) ;
 int dev_net (int ) ;
 int ip_protocol_deliver_rcu (int ,struct sk_buff*,int) ;
 scalar_t__ likely (int) ;
 int skb_mac_offset (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;
 int udp_queue_rcv_one_skb (struct sock*,struct sk_buff*) ;
 struct sk_buff* udp_rcv_segment (struct sock*,struct sk_buff*,int) ;
 int udp_unexpected_gso (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int udp_queue_rcv_skb(struct sock *sk, struct sk_buff *skb)
{
 struct sk_buff *next, *segs;
 int ret;

 if (likely(!udp_unexpected_gso(sk, skb)))
  return udp_queue_rcv_one_skb(sk, skb);

 BUILD_BUG_ON(sizeof(struct udp_skb_cb) > SKB_SGO_CB_OFFSET);
 __skb_push(skb, -skb_mac_offset(skb));
 segs = udp_rcv_segment(sk, skb, 1);
 for (skb = segs; skb; skb = next) {
  next = skb->next;
  __skb_pull(skb, skb_transport_offset(skb));
  ret = udp_queue_rcv_one_skb(sk, skb);
  if (ret > 0)
   ip_protocol_deliver_rcu(dev_net(skb->dev), skb, -ret);
 }
 return 0;
}
