
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ protocol; int dev; } ;
struct net {int dummy; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int ETH_HLEN ;
 int ETH_P_8021AD ;
 int ETH_P_8021Q ;
 int __vlan_get_protocol (struct sk_buff*,scalar_t__,int*) ;
 int br_drop_fake_rtable (struct sk_buff*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int is_skb_forwardable (int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_set_network_header (struct sk_buff*,int) ;

int br_dev_queue_push_xmit(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 skb_push(skb, ETH_HLEN);
 if (!is_skb_forwardable(skb->dev, skb))
  goto drop;

 br_drop_fake_rtable(skb);

 if (skb->ip_summed == CHECKSUM_PARTIAL &&
     (skb->protocol == htons(ETH_P_8021Q) ||
      skb->protocol == htons(ETH_P_8021AD))) {
  int depth;

  if (!__vlan_get_protocol(skb, skb->protocol, &depth))
   goto drop;

  skb_set_network_header(skb, depth);
 }

 dev_queue_xmit(skb);

 return 0;

drop:
 kfree_skb(skb);
 return 0;
}
