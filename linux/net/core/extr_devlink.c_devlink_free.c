
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int port_list; int sb_list; int dpipe_table_list; int resource_list; int param_list; int region_list; int reporter_list; int trap_list; int trap_group_list; int lock; int reporters_lock; } ;


 int WARN_ON (int) ;
 int kfree (struct devlink*) ;
 int list_empty (int *) ;
 int mutex_destroy (int *) ;

void devlink_free(struct devlink *devlink)
{
 mutex_destroy(&devlink->reporters_lock);
 mutex_destroy(&devlink->lock);
 WARN_ON(!list_empty(&devlink->trap_group_list));
 WARN_ON(!list_empty(&devlink->trap_list));
 WARN_ON(!list_empty(&devlink->reporter_list));
 WARN_ON(!list_empty(&devlink->region_list));
 WARN_ON(!list_empty(&devlink->param_list));
 WARN_ON(!list_empty(&devlink->resource_list));
 WARN_ON(!list_empty(&devlink->dpipe_table_list));
 WARN_ON(!list_empty(&devlink->sb_list));
 WARN_ON(!list_empty(&devlink->port_list));

 kfree(devlink);
}
