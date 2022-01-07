
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct devlink {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flash_update ) (struct devlink*,char const*,int *,int *) ;} ;


 int EOPNOTSUPP ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct devlink* netdev_to_devlink (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct devlink*,char const*,int *,int *) ;

int devlink_compat_flash_update(struct net_device *dev, const char *file_name)
{
 struct devlink *devlink;
 int ret;

 dev_hold(dev);
 rtnl_unlock();

 devlink = netdev_to_devlink(dev);
 if (!devlink || !devlink->ops->flash_update) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 mutex_lock(&devlink->lock);
 ret = devlink->ops->flash_update(devlink, file_name, ((void*)0), ((void*)0));
 mutex_unlock(&devlink->lock);

out:
 rtnl_lock();
 dev_put(dev);

 return ret;
}
