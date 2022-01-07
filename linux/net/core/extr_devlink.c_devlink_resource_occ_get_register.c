
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct devlink_resource {int occ_get; void* occ_get_priv; } ;
struct devlink {int lock; } ;
typedef int devlink_resource_occ_get_t ;


 scalar_t__ WARN_ON (int) ;
 struct devlink_resource* devlink_resource_find (struct devlink*,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void devlink_resource_occ_get_register(struct devlink *devlink,
           u64 resource_id,
           devlink_resource_occ_get_t *occ_get,
           void *occ_get_priv)
{
 struct devlink_resource *resource;

 mutex_lock(&devlink->lock);
 resource = devlink_resource_find(devlink, ((void*)0), resource_id);
 if (WARN_ON(!resource))
  goto out;
 WARN_ON(resource->occ_get);

 resource->occ_get = occ_get;
 resource->occ_get_priv = occ_get_priv;
out:
 mutex_unlock(&devlink->lock);
}
