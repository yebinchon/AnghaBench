
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct devlink_trap {scalar_t__ generic; TYPE_1__ group; int name; } ;


 int EINVAL ;
 int devlink_trap_driver_verify (struct devlink_trap const*) ;
 int devlink_trap_generic_verify (struct devlink_trap const*) ;

__attribute__((used)) static int devlink_trap_verify(const struct devlink_trap *trap)
{
 if (!trap || !trap->name || !trap->group.name)
  return -EINVAL;

 if (trap->generic)
  return devlink_trap_generic_verify(trap);
 else
  return devlink_trap_driver_verify(trap);
}
