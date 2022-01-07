
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct devlink {int lock; scalar_t__ snapshot_id; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u32 devlink_region_shapshot_id_get(struct devlink *devlink)
{
 u32 id;

 mutex_lock(&devlink->lock);
 id = ++devlink->snapshot_id;
 mutex_unlock(&devlink->lock);

 return id;
}
