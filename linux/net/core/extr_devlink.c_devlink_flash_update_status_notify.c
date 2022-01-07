
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int dummy; } ;


 int DEVLINK_CMD_FLASH_UPDATE_STATUS ;
 int __devlink_flash_update_notify (struct devlink*,int ,char const*,char const*,unsigned long,unsigned long) ;

void devlink_flash_update_status_notify(struct devlink *devlink,
     const char *status_msg,
     const char *component,
     unsigned long done,
     unsigned long total)
{
 __devlink_flash_update_notify(devlink,
          DEVLINK_CMD_FLASH_UPDATE_STATUS,
          status_msg, component, done, total);
}
