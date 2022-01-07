
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timer; } ;


 scalar_t__ del_timer (int *) ;
 int dev_put (struct net_device*) ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;

__attribute__((used)) static void dev_watchdog_down(struct net_device *dev)
{
 netif_tx_lock_bh(dev);
 if (del_timer(&dev->watchdog_timer))
  dev_put(dev);
 netif_tx_unlock_bh(dev);
}
