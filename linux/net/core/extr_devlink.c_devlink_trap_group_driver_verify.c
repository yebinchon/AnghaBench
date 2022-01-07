
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct devlink_trap_group {scalar_t__ id; int name; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ DEVLINK_TRAP_GROUP_GENERIC_ID_MAX ;
 int EEXIST ;
 int EINVAL ;
 TYPE_1__* devlink_trap_group_generic ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
devlink_trap_group_driver_verify(const struct devlink_trap_group *group)
{
 int i;

 if (group->id <= DEVLINK_TRAP_GROUP_GENERIC_ID_MAX)
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(devlink_trap_group_generic); i++) {
  if (!strcmp(group->name, devlink_trap_group_generic[i].name))
   return -EEXIST;
 }

 return 0;
}
