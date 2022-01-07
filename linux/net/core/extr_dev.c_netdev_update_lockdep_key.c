
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int _xmit_lock; } ;
struct net_device {int num_tx_queues; int qdisc_xmit_lock_key; int addr_list_lock_key; int addr_list_lock; } ;


 int lockdep_register_key (int *) ;
 int lockdep_set_class (int *,int *) ;
 int lockdep_unregister_key (int *) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int) ;

void netdev_update_lockdep_key(struct net_device *dev)
{
 struct netdev_queue *queue;
 int i;

 lockdep_unregister_key(&dev->qdisc_xmit_lock_key);
 lockdep_unregister_key(&dev->addr_list_lock_key);

 lockdep_register_key(&dev->qdisc_xmit_lock_key);
 lockdep_register_key(&dev->addr_list_lock_key);

 lockdep_set_class(&dev->addr_list_lock, &dev->addr_list_lock_key);
 for (i = 0; i < dev->num_tx_queues; i++) {
  queue = netdev_get_tx_queue(dev, i);

  lockdep_set_class(&queue->_xmit_lock,
      &dev->qdisc_xmit_lock_key);
 }
}
