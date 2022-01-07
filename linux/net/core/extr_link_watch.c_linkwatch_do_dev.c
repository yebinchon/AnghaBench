
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int state; } ;


 int IFF_UP ;
 int __LINK_STATE_LINKWATCH_PENDING ;
 int clear_bit (int ,int *) ;
 int dev_activate (struct net_device*) ;
 int dev_deactivate (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int netdev_state_change (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 scalar_t__ netif_device_present (struct net_device*) ;
 int rfc2863_policy (struct net_device*) ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static void linkwatch_do_dev(struct net_device *dev)
{




 smp_mb__before_atomic();




 clear_bit(__LINK_STATE_LINKWATCH_PENDING, &dev->state);

 rfc2863_policy(dev);
 if (dev->flags & IFF_UP && netif_device_present(dev)) {
  if (netif_carrier_ok(dev))
   dev_activate(dev);
  else
   dev_deactivate(dev);

  netdev_state_change(dev);
 }
 dev_put(dev);
}
