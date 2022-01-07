
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int operstate; } ;


 int dev_base_lock ;
 int netdev_state_change (struct net_device*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void __hsr_set_operstate(struct net_device *dev, int transition)
{
 write_lock_bh(&dev_base_lock);
 if (dev->operstate != transition) {
  dev->operstate = transition;
  write_unlock_bh(&dev_base_lock);
  netdev_state_change(dev);
 } else {
  write_unlock_bh(&dev_base_lock);
 }
}
