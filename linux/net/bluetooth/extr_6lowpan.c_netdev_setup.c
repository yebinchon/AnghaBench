
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int needs_free_netdev; int * header_ops; int * netdev_ops; int tx_queue_len; scalar_t__ watchdog_timeo; scalar_t__ needed_tailroom; scalar_t__ hard_header_len; } ;


 int DEFAULT_TX_QUEUE_LEN ;
 int IFF_MULTICAST ;
 int IFF_RUNNING ;
 int header_ops ;
 int netdev_ops ;

__attribute__((used)) static void netdev_setup(struct net_device *dev)
{
 dev->hard_header_len = 0;
 dev->needed_tailroom = 0;
 dev->flags = IFF_RUNNING | IFF_MULTICAST;
 dev->watchdog_timeo = 0;
 dev->tx_queue_len = DEFAULT_TX_QUEUE_LEN;

 dev->netdev_ops = &netdev_ops;
 dev->header_ops = &header_ops;
 dev->needs_free_netdev = 1;
}
