
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct devlink_region {char const* name; int list; int snapshot_list; int size; int max_snapshots; struct devlink* devlink; } ;
struct devlink {int lock; int region_list; } ;


 int DEVLINK_CMD_REGION_NEW ;
 int EEXIST ;
 int ENOMEM ;
 struct devlink_region* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int devlink_nl_region_notify (struct devlink_region*,int *,int ) ;
 scalar_t__ devlink_region_get_by_name (struct devlink*,char const*) ;
 struct devlink_region* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct devlink_region *devlink_region_create(struct devlink *devlink,
          const char *region_name,
          u32 region_max_snapshots,
          u64 region_size)
{
 struct devlink_region *region;
 int err = 0;

 mutex_lock(&devlink->lock);

 if (devlink_region_get_by_name(devlink, region_name)) {
  err = -EEXIST;
  goto unlock;
 }

 region = kzalloc(sizeof(*region), GFP_KERNEL);
 if (!region) {
  err = -ENOMEM;
  goto unlock;
 }

 region->devlink = devlink;
 region->max_snapshots = region_max_snapshots;
 region->name = region_name;
 region->size = region_size;
 INIT_LIST_HEAD(&region->snapshot_list);
 list_add_tail(&region->list, &devlink->region_list);
 devlink_nl_region_notify(region, ((void*)0), DEVLINK_CMD_REGION_NEW);

 mutex_unlock(&devlink->lock);
 return region;

unlock:
 mutex_unlock(&devlink->lock);
 return ERR_PTR(err);
}
