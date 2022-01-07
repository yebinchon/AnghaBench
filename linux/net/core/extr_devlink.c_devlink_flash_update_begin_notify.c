
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int dummy; } ;


 int DEVLINK_CMD_FLASH_UPDATE ;
 int __devlink_flash_update_notify (struct devlink*,int ,int *,int *,int ,int ) ;

void devlink_flash_update_begin_notify(struct devlink *devlink)
{
 __devlink_flash_update_notify(devlink,
          DEVLINK_CMD_FLASH_UPDATE,
          ((void*)0), ((void*)0), 0, 0);
}
