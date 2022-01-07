
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct devlink_snapshot {int list; int * data_destructor; int * data; struct devlink_region* region; int id; } ;
struct devlink_region {scalar_t__ cur_snapshots; scalar_t__ max_snapshots; int snapshot_list; struct devlink* devlink; } ;
struct devlink {int lock; } ;
typedef int devlink_snapshot_data_dest_t ;


 int DEVLINK_CMD_REGION_NEW ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int devlink_nl_region_notify (struct devlink_region*,struct devlink_snapshot*,int ) ;
 scalar_t__ devlink_region_snapshot_get_by_id (struct devlink_region*,int ) ;
 struct devlink_snapshot* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int devlink_region_snapshot_create(struct devlink_region *region,
       u8 *data, u32 snapshot_id,
       devlink_snapshot_data_dest_t *data_destructor)
{
 struct devlink *devlink = region->devlink;
 struct devlink_snapshot *snapshot;
 int err;

 mutex_lock(&devlink->lock);


 if (region->cur_snapshots == region->max_snapshots) {
  err = -ENOMEM;
  goto unlock;
 }

 if (devlink_region_snapshot_get_by_id(region, snapshot_id)) {
  err = -EEXIST;
  goto unlock;
 }

 snapshot = kzalloc(sizeof(*snapshot), GFP_KERNEL);
 if (!snapshot) {
  err = -ENOMEM;
  goto unlock;
 }

 snapshot->id = snapshot_id;
 snapshot->region = region;
 snapshot->data = data;
 snapshot->data_destructor = data_destructor;

 list_add_tail(&snapshot->list, &region->snapshot_list);

 region->cur_snapshots++;

 devlink_nl_region_notify(region, snapshot, DEVLINK_CMD_REGION_NEW);
 mutex_unlock(&devlink->lock);
 return 0;

unlock:
 mutex_unlock(&devlink->lock);
 return err;
}
