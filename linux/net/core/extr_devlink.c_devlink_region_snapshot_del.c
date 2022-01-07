
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_snapshot {int data; int (* data_destructor ) (int ) ;int list; } ;
struct devlink_region {int cur_snapshots; } ;


 int DEVLINK_CMD_REGION_DEL ;
 int devlink_nl_region_notify (struct devlink_region*,struct devlink_snapshot*,int ) ;
 int kfree (struct devlink_snapshot*) ;
 int list_del (int *) ;
 int stub1 (int ) ;

__attribute__((used)) static void devlink_region_snapshot_del(struct devlink_region *region,
     struct devlink_snapshot *snapshot)
{
 devlink_nl_region_notify(region, snapshot, DEVLINK_CMD_REGION_DEL);
 region->cur_snapshots--;
 list_del(&snapshot->list);
 (*snapshot->data_destructor)(snapshot->data);
 kfree(snapshot);
}
