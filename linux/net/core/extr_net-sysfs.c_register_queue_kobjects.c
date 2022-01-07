
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct net_device {int real_num_rx_queues; int real_num_tx_queues; int queues_kset; TYPE_1__ dev; } ;


 int ENOMEM ;
 int kset_create_and_add (char*,int *,int *) ;
 int kset_unregister (int ) ;
 int net_rx_queue_update_kobjects (struct net_device*,int,int) ;
 int netdev_queue_update_kobjects (struct net_device*,int,int) ;

__attribute__((used)) static int register_queue_kobjects(struct net_device *dev)
{
 int error = 0, txq = 0, rxq = 0, real_rx = 0, real_tx = 0;
 real_tx = dev->real_num_tx_queues;

 error = net_rx_queue_update_kobjects(dev, 0, real_rx);
 if (error)
  goto error;
 rxq = real_rx;

 error = netdev_queue_update_kobjects(dev, 0, real_tx);
 if (error)
  goto error;
 txq = real_tx;

 return 0;

error:
 netdev_queue_update_kobjects(dev, txq, 0);
 net_rx_queue_update_kobjects(dev, rxq, 0);



 return error;
}
