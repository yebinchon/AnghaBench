
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {scalar_t__ sb_dev; } ;
struct net_device {size_t num_tx_queues; struct netdev_queue* _tx; } ;


 int netdev_unbind_sb_channel (struct net_device*,scalar_t__) ;

__attribute__((used)) static void netdev_unbind_all_sb_channels(struct net_device *dev)
{
 struct netdev_queue *txq = &dev->_tx[dev->num_tx_queues];


 while (txq-- != &dev->_tx[0]) {
  if (txq->sb_dev)
   netdev_unbind_sb_channel(dev, txq->sb_dev);
 }
}
