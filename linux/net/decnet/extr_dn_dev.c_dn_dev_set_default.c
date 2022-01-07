
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dn_ptr; } ;


 int EBUSY ;
 int ENODEV ;
 struct net_device* decnet_default_device ;
 int dev_put (struct net_device*) ;
 int dndev_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dn_dev_set_default(struct net_device *dev, int force)
{
 struct net_device *old = ((void*)0);
 int rv = -EBUSY;
 if (!dev->dn_ptr)
  return -ENODEV;

 spin_lock(&dndev_lock);
 if (force || decnet_default_device == ((void*)0)) {
  old = decnet_default_device;
  decnet_default_device = dev;
  rv = 0;
 }
 spin_unlock(&dndev_lock);

 if (old)
  dev_put(old);
 return rv;
}
