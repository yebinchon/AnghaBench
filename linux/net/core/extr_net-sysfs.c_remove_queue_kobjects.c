
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int real_num_rx_queues; int real_num_tx_queues; int queues_kset; } ;


 int kset_unregister (int ) ;
 int net_rx_queue_update_kobjects (struct net_device*,int,int ) ;
 int netdev_queue_update_kobjects (struct net_device*,int,int ) ;

__attribute__((used)) static void remove_queue_kobjects(struct net_device *dev)
{
 int real_rx = 0, real_tx = 0;




 real_tx = dev->real_num_tx_queues;

 net_rx_queue_update_kobjects(dev, real_rx, 0);
 netdev_queue_update_kobjects(dev, real_tx, 0);



}
