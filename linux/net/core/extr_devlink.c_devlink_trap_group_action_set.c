
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_info {int extack; int * attrs; } ;
struct devlink_trap_group_item {int dummy; } ;
struct devlink {int dummy; } ;
typedef enum devlink_trap_action { ____Placeholder_devlink_trap_action } devlink_trap_action ;


 size_t DEVLINK_ATTR_TRAP_ACTION ;
 int EINVAL ;
 int NL_SET_ERR_MSG_MOD (int ,char*) ;
 int __devlink_trap_group_action_set (struct devlink*,struct devlink_trap_group_item*,int,int ) ;
 int devlink_trap_action_get_from_info (struct genl_info*,int*) ;

__attribute__((used)) static int
devlink_trap_group_action_set(struct devlink *devlink,
         struct devlink_trap_group_item *group_item,
         struct genl_info *info)
{
 enum devlink_trap_action trap_action;
 int err;

 if (!info->attrs[DEVLINK_ATTR_TRAP_ACTION])
  return 0;

 err = devlink_trap_action_get_from_info(info, &trap_action);
 if (err) {
  NL_SET_ERR_MSG_MOD(info->extack, "Invalid trap action");
  return -EINVAL;
 }

 err = __devlink_trap_group_action_set(devlink, group_item, trap_action,
           info->extack);
 if (err)
  return err;

 return 0;
}
