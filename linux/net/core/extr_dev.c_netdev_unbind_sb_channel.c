
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {struct net_device* sb_dev; } ;
struct net_device {size_t num_tx_queues; struct netdev_queue* _tx; int prio_tc_map; int tc_to_txq; } ;


 int memset (int ,int ,int) ;
 int netif_reset_xps_queues_gt (struct net_device*,int ) ;

void netdev_unbind_sb_channel(struct net_device *dev,
         struct net_device *sb_dev)
{
 struct netdev_queue *txq = &dev->_tx[dev->num_tx_queues];




 memset(sb_dev->tc_to_txq, 0, sizeof(sb_dev->tc_to_txq));
 memset(sb_dev->prio_tc_map, 0, sizeof(sb_dev->prio_tc_map));

 while (txq-- != &dev->_tx[0]) {
  if (txq->sb_dev == sb_dev)
   txq->sb_dev = ((void*)0);
 }
}
