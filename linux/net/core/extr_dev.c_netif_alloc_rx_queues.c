
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_rx_queue {int xdp_rxq; struct net_device* dev; } ;
struct net_device {unsigned int num_rx_queues; struct netdev_rx_queue* _rx; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_RETRY_MAYFAIL ;
 int kvfree (struct netdev_rx_queue*) ;
 struct netdev_rx_queue* kvzalloc (size_t,int) ;
 int xdp_rxq_info_reg (int *,struct net_device*,unsigned int) ;
 int xdp_rxq_info_unreg (int *) ;

__attribute__((used)) static int netif_alloc_rx_queues(struct net_device *dev)
{
 unsigned int i, count = dev->num_rx_queues;
 struct netdev_rx_queue *rx;
 size_t sz = count * sizeof(*rx);
 int err = 0;

 BUG_ON(count < 1);

 rx = kvzalloc(sz, GFP_KERNEL | __GFP_RETRY_MAYFAIL);
 if (!rx)
  return -ENOMEM;

 dev->_rx = rx;

 for (i = 0; i < count; i++) {
  rx[i].dev = dev;


  err = xdp_rxq_info_reg(&rx[i].xdp_rxq, dev, i);
  if (err < 0)
   goto err_rxq_info;
 }
 return 0;

err_rxq_info:

 while (i--)
  xdp_rxq_info_unreg(&rx[i].xdp_rxq);
 kvfree(dev->_rx);
 dev->_rx = ((void*)0);
 return err;
}
