
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {unsigned int flags; unsigned int gflags; } ;


 int __dev_change_flags (struct net_device*,unsigned int,struct netlink_ext_ack*) ;
 int __dev_notify_flags (struct net_device*,unsigned int,unsigned int) ;

int dev_change_flags(struct net_device *dev, unsigned int flags,
       struct netlink_ext_ack *extack)
{
 int ret;
 unsigned int changes, old_flags = dev->flags, old_gflags = dev->gflags;

 ret = __dev_change_flags(dev, flags, extack);
 if (ret < 0)
  return ret;

 changes = (old_flags ^ dev->flags) | (old_gflags ^ dev->gflags);
 __dev_notify_flags(dev, old_flags, changes);
 return ret;
}
