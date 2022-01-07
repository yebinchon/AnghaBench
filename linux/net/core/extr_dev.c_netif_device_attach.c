
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int state; } ;


 int __LINK_STATE_PRESENT ;
 int __netdev_watchdog_up (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;
 int test_and_set_bit (int ,int *) ;

void netif_device_attach(struct net_device *dev)
{
 if (!test_and_set_bit(__LINK_STATE_PRESENT, &dev->state) &&
     netif_running(dev)) {
  netif_tx_wake_all_queues(dev);
  __netdev_watchdog_up(dev);
 }
}
