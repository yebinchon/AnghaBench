
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_trap_item {struct devlink_trap_group_item* group_item; TYPE_1__* trap; } ;
struct devlink_trap_group_item {int dummy; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int group; } ;


 scalar_t__ IS_ERR (struct devlink_trap_group_item*) ;
 int PTR_ERR (struct devlink_trap_group_item*) ;
 struct devlink_trap_group_item* devlink_trap_group_item_get (struct devlink*,int *) ;

__attribute__((used)) static int
devlink_trap_item_group_link(struct devlink *devlink,
        struct devlink_trap_item *trap_item)
{
 struct devlink_trap_group_item *group_item;

 group_item = devlink_trap_group_item_get(devlink,
       &trap_item->trap->group);
 if (IS_ERR(group_item))
  return PTR_ERR(group_item);

 trap_item->group_item = group_item;

 return 0;
}
