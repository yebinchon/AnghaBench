
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int list; struct device* dev; } ;
struct device {int dummy; } ;


 int DEVLINK_CMD_NEW ;
 int devlink_list ;
 int devlink_mutex ;
 int devlink_notify (struct devlink*,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int devlink_register(struct devlink *devlink, struct device *dev)
{
 mutex_lock(&devlink_mutex);
 devlink->dev = dev;
 list_add_tail(&devlink->list, &devlink_list);
 devlink_notify(devlink, DEVLINK_CMD_NEW);
 mutex_unlock(&devlink_mutex);
 return 0;
}
