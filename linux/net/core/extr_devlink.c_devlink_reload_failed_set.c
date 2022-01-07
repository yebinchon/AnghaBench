
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int reload_failed; } ;


 int DEVLINK_CMD_NEW ;
 int devlink_notify (struct devlink*,int ) ;

__attribute__((used)) static void devlink_reload_failed_set(struct devlink *devlink,
          bool reload_failed)
{
 if (devlink->reload_failed == reload_failed)
  return;
 devlink->reload_failed = reload_failed;
 devlink_notify(devlink, DEVLINK_CMD_NEW);
}
