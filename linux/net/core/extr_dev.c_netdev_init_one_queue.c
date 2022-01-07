
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int xmit_lock_owner; int dql; struct net_device* dev; int _xmit_lock; } ;
struct net_device {int qdisc_xmit_lock_key; } ;


 int HZ ;
 int NUMA_NO_NODE ;
 int dql_init (int *,int ) ;
 int lockdep_set_class (int *,int *) ;
 int netdev_queue_numa_node_write (struct netdev_queue*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void netdev_init_one_queue(struct net_device *dev,
      struct netdev_queue *queue, void *_unused)
{

 spin_lock_init(&queue->_xmit_lock);
 lockdep_set_class(&queue->_xmit_lock, &dev->qdisc_xmit_lock_key);
 queue->xmit_lock_owner = -1;
 netdev_queue_numa_node_write(queue, NUMA_NO_NODE);
 queue->dev = dev;



}
