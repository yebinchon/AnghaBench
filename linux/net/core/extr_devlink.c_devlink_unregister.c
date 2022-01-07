
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int list; } ;


 int DEVLINK_CMD_DEL ;
 int devlink_mutex ;
 int devlink_notify (struct devlink*,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void devlink_unregister(struct devlink *devlink)
{
 mutex_lock(&devlink_mutex);
 devlink_notify(devlink, DEVLINK_CMD_DEL);
 list_del(&devlink->list);
 mutex_unlock(&devlink_mutex);
}
