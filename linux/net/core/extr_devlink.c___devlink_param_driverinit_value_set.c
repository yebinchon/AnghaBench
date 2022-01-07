
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union devlink_param_value {int vstr; } ;
typedef int u32 ;
struct list_head {int dummy; } ;
struct devlink_param_item {int driverinit_value_valid; union devlink_param_value driverinit_value; TYPE_1__* param; } ;
struct devlink {int dummy; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;
struct TYPE_2__ {scalar_t__ type; } ;


 int DEVLINK_PARAM_CMODE_DRIVERINIT ;
 scalar_t__ DEVLINK_PARAM_TYPE_STRING ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int devlink_param_cmode_is_supported (TYPE_1__*,int ) ;
 struct devlink_param_item* devlink_param_find_by_id (struct list_head*,int ) ;
 int devlink_param_notify (struct devlink*,unsigned int,struct devlink_param_item*,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int
__devlink_param_driverinit_value_set(struct devlink *devlink,
         unsigned int port_index,
         struct list_head *param_list, u32 param_id,
         union devlink_param_value init_val,
         enum devlink_command cmd)
{
 struct devlink_param_item *param_item;

 param_item = devlink_param_find_by_id(param_list, param_id);
 if (!param_item)
  return -EINVAL;

 if (!devlink_param_cmode_is_supported(param_item->param,
           DEVLINK_PARAM_CMODE_DRIVERINIT))
  return -EOPNOTSUPP;

 if (param_item->param->type == DEVLINK_PARAM_TYPE_STRING)
  strcpy(param_item->driverinit_value.vstr, init_val.vstr);
 else
  param_item->driverinit_value = init_val;
 param_item->driverinit_value_valid = 1;

 devlink_param_notify(devlink, port_index, param_item, cmd);
 return 0;
}
