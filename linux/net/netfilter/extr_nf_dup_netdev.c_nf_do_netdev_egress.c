
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; int mac_len; } ;
struct net_device {int dummy; } ;


 int dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ skb_mac_header_was_set (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static void nf_do_netdev_egress(struct sk_buff *skb, struct net_device *dev)
{
 if (skb_mac_header_was_set(skb))
  skb_push(skb, skb->mac_len);

 skb->dev = dev;
 dev_queue_xmit(skb);
}
