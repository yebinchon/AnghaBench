
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; } ;
struct net_device {int dummy; } ;


 int ETH_HLEN ;
 int ____dev_forward_skb (struct net_device*,struct sk_buff*) ;
 int eth_hdr (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ likely (int) ;
 int skb_postpull_rcsum (struct sk_buff*,int ,int ) ;

int __dev_forward_skb(struct net_device *dev, struct sk_buff *skb)
{
 int ret = ____dev_forward_skb(dev, skb);

 if (likely(!ret)) {
  skb->protocol = eth_type_trans(skb, dev);
  skb_postpull_rcsum(skb, eth_hdr(skb), ETH_HLEN);
 }

 return ret;
}
