
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_trap_group_item {int stats; int list; } ;
struct devlink {int dummy; } ;


 int DEVLINK_CMD_TRAP_GROUP_DEL ;
 int devlink_trap_group_notify (struct devlink*,struct devlink_trap_group_item*,int ) ;
 int free_percpu (int ) ;
 int kfree (struct devlink_trap_group_item*) ;
 int list_del (int *) ;

__attribute__((used)) static void
devlink_trap_group_item_destroy(struct devlink *devlink,
    struct devlink_trap_group_item *group_item)
{
 devlink_trap_group_notify(devlink, group_item,
      DEVLINK_CMD_TRAP_GROUP_DEL);
 list_del(&group_item->list);
 free_percpu(group_item->stats);
 kfree(group_item);
}
