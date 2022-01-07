
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_trap {size_t id; scalar_t__ type; int name; } ;
struct TYPE_2__ {scalar_t__ type; int name; } ;


 size_t DEVLINK_TRAP_GENERIC_ID_MAX ;
 int EINVAL ;
 TYPE_1__* devlink_trap_generic ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int devlink_trap_generic_verify(const struct devlink_trap *trap)
{
 if (trap->id > DEVLINK_TRAP_GENERIC_ID_MAX)
  return -EINVAL;

 if (strcmp(trap->name, devlink_trap_generic[trap->id].name))
  return -EINVAL;

 if (trap->type != devlink_trap_generic[trap->id].type)
  return -EINVAL;

 return 0;
}
