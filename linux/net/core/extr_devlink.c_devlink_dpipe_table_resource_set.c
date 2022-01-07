
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct devlink_dpipe_table {int resource_valid; void* resource_units; void* resource_id; } ;
struct devlink {int lock; int dpipe_table_list; } ;


 int EINVAL ;
 struct devlink_dpipe_table* devlink_dpipe_table_find (int *,char const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int devlink_dpipe_table_resource_set(struct devlink *devlink,
         const char *table_name, u64 resource_id,
         u64 resource_units)
{
 struct devlink_dpipe_table *table;
 int err = 0;

 mutex_lock(&devlink->lock);
 table = devlink_dpipe_table_find(&devlink->dpipe_table_list,
      table_name);
 if (!table) {
  err = -EINVAL;
  goto out;
 }
 table->resource_id = resource_id;
 table->resource_units = resource_units;
 table->resource_valid = 1;
out:
 mutex_unlock(&devlink->lock);
 return err;
}
