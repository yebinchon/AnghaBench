
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_sb {int list; } ;
struct devlink {int lock; } ;


 int WARN_ON (int) ;
 struct devlink_sb* devlink_sb_get_by_index (struct devlink*,unsigned int) ;
 int kfree (struct devlink_sb*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void devlink_sb_unregister(struct devlink *devlink, unsigned int sb_index)
{
 struct devlink_sb *devlink_sb;

 mutex_lock(&devlink->lock);
 devlink_sb = devlink_sb_get_by_index(devlink, sb_index);
 WARN_ON(!devlink_sb);
 list_del(&devlink_sb->list);
 mutex_unlock(&devlink->lock);
 kfree(devlink_sb);
}
