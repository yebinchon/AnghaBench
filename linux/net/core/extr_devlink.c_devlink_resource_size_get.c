
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct devlink_resource {int size_new; int size; } ;
struct devlink {int lock; } ;


 int EINVAL ;
 struct devlink_resource* devlink_resource_find (struct devlink*,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int devlink_resource_size_get(struct devlink *devlink,
         u64 resource_id,
         u64 *p_resource_size)
{
 struct devlink_resource *resource;
 int err = 0;

 mutex_lock(&devlink->lock);
 resource = devlink_resource_find(devlink, ((void*)0), resource_id);
 if (!resource) {
  err = -EINVAL;
  goto out;
 }
 *p_resource_size = resource->size_new;
 resource->size = resource->size_new;
out:
 mutex_unlock(&devlink->lock);
 return err;
}
