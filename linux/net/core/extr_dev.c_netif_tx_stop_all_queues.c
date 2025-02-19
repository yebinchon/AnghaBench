
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct net_device {unsigned int num_tx_queues; } ;


 struct netdev_queue* netdev_get_tx_queue (struct net_device*,unsigned int) ;
 int netif_tx_stop_queue (struct netdev_queue*) ;

void netif_tx_stop_all_queues(struct net_device *dev)
{
 unsigned int i;

 for (i = 0; i < dev->num_tx_queues; i++) {
  struct netdev_queue *txq = netdev_get_tx_queue(dev, i);

  netif_tx_stop_queue(txq);
 }
}
