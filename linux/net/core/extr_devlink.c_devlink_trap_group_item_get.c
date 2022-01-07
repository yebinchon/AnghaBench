
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_trap_group_item {int refcount; } ;
struct devlink_trap_group {int name; } ;
struct devlink {int dummy; } ;


 struct devlink_trap_group_item* devlink_trap_group_item_create (struct devlink*,struct devlink_trap_group const*) ;
 struct devlink_trap_group_item* devlink_trap_group_item_lookup (struct devlink*,int ) ;
 int refcount_inc (int *) ;

__attribute__((used)) static struct devlink_trap_group_item *
devlink_trap_group_item_get(struct devlink *devlink,
       const struct devlink_trap_group *group)
{
 struct devlink_trap_group_item *group_item;

 group_item = devlink_trap_group_item_lookup(devlink, group->name);
 if (group_item) {
  refcount_inc(&group_item->refcount);
  return group_item;
 }

 return devlink_trap_group_item_create(devlink, group);
}
