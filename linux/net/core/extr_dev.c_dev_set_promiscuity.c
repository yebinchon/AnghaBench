
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int flags; } ;


 int __dev_set_promiscuity (struct net_device*,int,int) ;
 int dev_set_rx_mode (struct net_device*) ;

int dev_set_promiscuity(struct net_device *dev, int inc)
{
 unsigned int old_flags = dev->flags;
 int err;

 err = __dev_set_promiscuity(dev, inc, 1);
 if (err < 0)
  return err;
 if (dev->flags != old_flags)
  dev_set_rx_mode(dev);
 return err;
}
