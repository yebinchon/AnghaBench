
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int net_xmit_errno (int) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __vsock_deliver_tap_skb(struct sk_buff *skb,
       struct net_device *dev)
{
 int ret = 0;
 struct sk_buff *nskb = skb_clone(skb, GFP_ATOMIC);

 if (nskb) {
  dev_hold(dev);

  nskb->dev = dev;
  ret = dev_queue_xmit(nskb);
  if (unlikely(ret > 0))
   ret = net_xmit_errno(ret);

  dev_put(dev);
 }

 return ret;
}
