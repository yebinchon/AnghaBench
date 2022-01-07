
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_trap_item {int group_item; } ;
struct devlink {int dummy; } ;


 int devlink_trap_group_item_put (struct devlink*,int ) ;

__attribute__((used)) static void
devlink_trap_item_group_unlink(struct devlink *devlink,
          struct devlink_trap_item *trap_item)
{
 devlink_trap_group_item_put(devlink, trap_item->group_item);
}
