
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct devlink_trap {scalar_t__ id; int name; } ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ DEVLINK_TRAP_GENERIC_ID_MAX ;
 int EEXIST ;
 int EINVAL ;
 TYPE_1__* devlink_trap_generic ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int devlink_trap_driver_verify(const struct devlink_trap *trap)
{
 int i;

 if (trap->id <= DEVLINK_TRAP_GENERIC_ID_MAX)
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(devlink_trap_generic); i++) {
  if (!strcmp(trap->name, devlink_trap_generic[i].name))
   return -EEXIST;
 }

 return 0;
}
