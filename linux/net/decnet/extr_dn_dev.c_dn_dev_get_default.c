
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ dn_ptr; } ;


 struct net_device* decnet_default_device ;
 int dev_hold (struct net_device*) ;
 int dndev_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct net_device *dn_dev_get_default(void)
{
 struct net_device *dev;

 spin_lock(&dndev_lock);
 dev = decnet_default_device;
 if (dev) {
  if (dev->dn_ptr)
   dev_hold(dev);
  else
   dev = ((void*)0);
 }
 spin_unlock(&dndev_lock);

 return dev;
}
