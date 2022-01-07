
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ reg_state; int carrier_down_count; int state; } ;


 scalar_t__ NETREG_UNINITIALIZED ;
 int __LINK_STATE_NOCARRIER ;
 int atomic_inc (int *) ;
 int linkwatch_fire_event (struct net_device*) ;
 int test_and_set_bit (int ,int *) ;

void netif_carrier_off(struct net_device *dev)
{
 if (!test_and_set_bit(__LINK_STATE_NOCARRIER, &dev->state)) {
  if (dev->reg_state == NETREG_UNINITIALIZED)
   return;
  atomic_inc(&dev->carrier_down_count);
  linkwatch_fire_event(dev);
 }
}
