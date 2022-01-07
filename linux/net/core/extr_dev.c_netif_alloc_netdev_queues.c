
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct net_device {unsigned int num_tx_queues; int tx_global_lock; struct netdev_queue* _tx; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_RETRY_MAYFAIL ;
 struct netdev_queue* kvzalloc (size_t,int) ;
 int netdev_for_each_tx_queue (struct net_device*,int ,int *) ;
 int netdev_init_one_queue ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int netif_alloc_netdev_queues(struct net_device *dev)
{
 unsigned int count = dev->num_tx_queues;
 struct netdev_queue *tx;
 size_t sz = count * sizeof(*tx);

 if (count < 1 || count > 0xffff)
  return -EINVAL;

 tx = kvzalloc(sz, GFP_KERNEL | __GFP_RETRY_MAYFAIL);
 if (!tx)
  return -ENOMEM;

 dev->_tx = tx;

 netdev_for_each_tx_queue(dev, netdev_init_one_queue, ((void*)0));
 spin_lock_init(&dev->tx_global_lock);

 return 0;
}
