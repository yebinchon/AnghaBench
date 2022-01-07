
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct devlink {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int info_get; } ;


 int __devlink_compat_running_version (struct devlink*,char*,size_t) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct devlink* netdev_to_devlink (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void devlink_compat_running_version(struct net_device *dev,
        char *buf, size_t len)
{
 struct devlink *devlink;

 dev_hold(dev);
 rtnl_unlock();

 devlink = netdev_to_devlink(dev);
 if (!devlink || !devlink->ops->info_get)
  goto out;

 mutex_lock(&devlink->lock);
 __devlink_compat_running_version(devlink, buf, len);
 mutex_unlock(&devlink->lock);

out:
 rtnl_lock();
 dev_put(dev);
}
