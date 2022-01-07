
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;


 scalar_t__ dev_nit_active (struct net_device*) ;
 int dev_queue_xmit_nit (struct sk_buff*,struct net_device*) ;
 int netdev_start_xmit (struct sk_buff*,struct net_device*,struct netdev_queue*,int) ;
 int trace_net_dev_start_xmit (struct sk_buff*,struct net_device*) ;
 int trace_net_dev_xmit (struct sk_buff*,int,struct net_device*,unsigned int) ;

__attribute__((used)) static int xmit_one(struct sk_buff *skb, struct net_device *dev,
      struct netdev_queue *txq, bool more)
{
 unsigned int len;
 int rc;

 if (dev_nit_active(dev))
  dev_queue_xmit_nit(skb, dev);

 len = skb->len;
 trace_net_dev_start_xmit(skb, dev);
 rc = netdev_start_xmit(skb, dev, txq, more);
 trace_net_dev_xmit(skb, rc, dev, len);

 return rc;
}
