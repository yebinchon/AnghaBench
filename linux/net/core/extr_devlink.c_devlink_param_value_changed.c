
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct devlink_param_item {int dummy; } ;
struct devlink {int param_list; } ;


 int DEVLINK_CMD_PARAM_NEW ;
 int WARN_ON (int) ;
 struct devlink_param_item* devlink_param_find_by_id (int *,int ) ;
 int devlink_param_notify (struct devlink*,int ,struct devlink_param_item*,int ) ;

void devlink_param_value_changed(struct devlink *devlink, u32 param_id)
{
 struct devlink_param_item *param_item;

 param_item = devlink_param_find_by_id(&devlink->param_list, param_id);
 WARN_ON(!param_item);

 devlink_param_notify(devlink, 0, param_item, DEVLINK_CMD_PARAM_NEW);
}
