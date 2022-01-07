
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_trap_group {scalar_t__ generic; } ;


 int devlink_trap_group_driver_verify (struct devlink_trap_group const*) ;
 int devlink_trap_group_generic_verify (struct devlink_trap_group const*) ;

__attribute__((used)) static int devlink_trap_group_verify(const struct devlink_trap_group *group)
{
 if (group->generic)
  return devlink_trap_group_generic_verify(group);
 else
  return devlink_trap_group_driver_verify(group);
}
