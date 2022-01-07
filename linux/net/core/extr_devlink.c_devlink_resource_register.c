
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct list_head {int dummy; } ;
struct devlink_resource_size_params {int dummy; } ;
struct devlink_resource {char const* name; int size_valid; int list; struct list_head resource_list; int size_params; scalar_t__ id; scalar_t__ size_new; scalar_t__ size; struct devlink_resource* parent; } ;
struct devlink {int lock; struct list_head resource_list; } ;


 scalar_t__ DEVLINK_RESOURCE_ID_PARENT_TOP ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 struct devlink_resource* devlink_resource_find (struct devlink*,int *,scalar_t__) ;
 int kfree (struct devlink_resource*) ;
 struct devlink_resource* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int memcpy (int *,struct devlink_resource_size_params const*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int devlink_resource_register(struct devlink *devlink,
         const char *resource_name,
         u64 resource_size,
         u64 resource_id,
         u64 parent_resource_id,
         const struct devlink_resource_size_params *size_params)
{
 struct devlink_resource *resource;
 struct list_head *resource_list;
 bool top_hierarchy;
 int err = 0;

 top_hierarchy = parent_resource_id == DEVLINK_RESOURCE_ID_PARENT_TOP;

 mutex_lock(&devlink->lock);
 resource = devlink_resource_find(devlink, ((void*)0), resource_id);
 if (resource) {
  err = -EINVAL;
  goto out;
 }

 resource = kzalloc(sizeof(*resource), GFP_KERNEL);
 if (!resource) {
  err = -ENOMEM;
  goto out;
 }

 if (top_hierarchy) {
  resource_list = &devlink->resource_list;
 } else {
  struct devlink_resource *parent_resource;

  parent_resource = devlink_resource_find(devlink, ((void*)0),
       parent_resource_id);
  if (parent_resource) {
   resource_list = &parent_resource->resource_list;
   resource->parent = parent_resource;
  } else {
   kfree(resource);
   err = -EINVAL;
   goto out;
  }
 }

 resource->name = resource_name;
 resource->size = resource_size;
 resource->size_new = resource_size;
 resource->id = resource_id;
 resource->size_valid = 1;
 memcpy(&resource->size_params, size_params,
        sizeof(resource->size_params));
 INIT_LIST_HEAD(&resource->resource_list);
 list_add_tail(&resource->list, resource_list);
out:
 mutex_unlock(&devlink->lock);
 return err;
}
