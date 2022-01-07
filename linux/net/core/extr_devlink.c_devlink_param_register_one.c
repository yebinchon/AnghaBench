
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct devlink_param_item {int list; struct devlink_param const* param; } ;
struct devlink_param {scalar_t__ supported_cmodes; scalar_t__ set; scalar_t__ get; int name; } ;
struct devlink {int dummy; } ;
typedef enum devlink_command { ____Placeholder_devlink_command } devlink_command ;


 scalar_t__ BIT (int ) ;
 int DEVLINK_PARAM_CMODE_DRIVERINIT ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WARN_ON (int) ;
 scalar_t__ devlink_param_find_by_name (struct list_head*,int ) ;
 int devlink_param_notify (struct devlink*,unsigned int,struct devlink_param_item*,int) ;
 struct devlink_param_item* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static int devlink_param_register_one(struct devlink *devlink,
          unsigned int port_index,
          struct list_head *param_list,
          const struct devlink_param *param,
          enum devlink_command cmd)
{
 struct devlink_param_item *param_item;

 if (devlink_param_find_by_name(param_list, param->name))
  return -EEXIST;

 if (param->supported_cmodes == BIT(DEVLINK_PARAM_CMODE_DRIVERINIT))
  WARN_ON(param->get || param->set);
 else
  WARN_ON(!param->get || !param->set);

 param_item = kzalloc(sizeof(*param_item), GFP_KERNEL);
 if (!param_item)
  return -ENOMEM;
 param_item->param = param;

 list_add_tail(&param_item->list, param_list);
 devlink_param_notify(devlink, port_index, param_item, cmd);
 return 0;
}
