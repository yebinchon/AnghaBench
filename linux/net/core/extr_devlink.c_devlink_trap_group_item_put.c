
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_trap_group_item {int refcount; } ;
struct devlink {int dummy; } ;


 int devlink_trap_group_item_destroy (struct devlink*,struct devlink_trap_group_item*) ;
 int refcount_dec_and_test (int *) ;

__attribute__((used)) static void
devlink_trap_group_item_put(struct devlink *devlink,
       struct devlink_trap_group_item *group_item)
{
 if (!refcount_dec_and_test(&group_item->refcount))
  return;

 devlink_trap_group_item_destroy(devlink, group_item);
}
