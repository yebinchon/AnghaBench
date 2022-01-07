
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ reg_state; int carrier_up_count; int state; } ;


 scalar_t__ NETREG_UNINITIALIZED ;
 int __LINK_STATE_NOCARRIER ;
 int __netdev_watchdog_up (struct net_device*) ;
 int atomic_inc (int *) ;
 int linkwatch_fire_event (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void netif_carrier_on(struct net_device *dev)
{
 if (test_and_clear_bit(__LINK_STATE_NOCARRIER, &dev->state)) {
  if (dev->reg_state == NETREG_UNINITIALIZED)
   return;
  atomic_inc(&dev->carrier_up_count);
  linkwatch_fire_event(dev);
  if (netif_running(dev))
   __netdev_watchdog_up(dev);
 }
}
