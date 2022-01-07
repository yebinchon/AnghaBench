
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int dev_queue_xmit (struct sk_buff*) ;
 int dsa_slave_netpoll_send_skb (struct net_device*,struct sk_buff*) ;
 int dsa_slave_to_master (struct net_device*) ;
 int netpoll_tx_running (struct net_device*) ;
 scalar_t__ unlikely (int ) ;

netdev_tx_t dsa_enqueue_skb(struct sk_buff *skb, struct net_device *dev)
{



 if (unlikely(netpoll_tx_running(dev)))
  return dsa_slave_netpoll_send_skb(dev, skb);




 skb->dev = dsa_slave_to_master(dev);
 dev_queue_xmit(skb);

 return NETDEV_TX_OK;
}
