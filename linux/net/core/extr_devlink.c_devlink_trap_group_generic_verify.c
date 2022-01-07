
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_trap_group {size_t id; int name; } ;
struct TYPE_2__ {int name; } ;


 size_t DEVLINK_TRAP_GROUP_GENERIC_ID_MAX ;
 int EINVAL ;
 TYPE_1__* devlink_trap_group_generic ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int
devlink_trap_group_generic_verify(const struct devlink_trap_group *group)
{
 if (group->id > DEVLINK_TRAP_GROUP_GENERIC_ID_MAX)
  return -EINVAL;

 if (strcmp(group->name, devlink_trap_group_generic[group->id].name))
  return -EINVAL;

 return 0;
}
