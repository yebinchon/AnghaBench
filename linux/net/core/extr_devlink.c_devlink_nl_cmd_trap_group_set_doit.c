
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct genl_info {struct devlink** user_ptr; struct netlink_ext_ack* extack; } ;
struct devlink_trap_group_item {int dummy; } ;
struct devlink {int trap_group_list; } ;


 int ENOENT ;
 int EOPNOTSUPP ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int devlink_trap_group_action_set (struct devlink*,struct devlink_trap_group_item*,struct genl_info*) ;
 struct devlink_trap_group_item* devlink_trap_group_item_get_from_info (struct devlink*,struct genl_info*) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int devlink_nl_cmd_trap_group_set_doit(struct sk_buff *skb,
           struct genl_info *info)
{
 struct netlink_ext_ack *extack = info->extack;
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_trap_group_item *group_item;
 int err;

 if (list_empty(&devlink->trap_group_list))
  return -EOPNOTSUPP;

 group_item = devlink_trap_group_item_get_from_info(devlink, info);
 if (!group_item) {
  NL_SET_ERR_MSG_MOD(extack, "Device did not register this trap group");
  return -ENOENT;
 }

 err = devlink_trap_group_action_set(devlink, group_item, info);
 if (err)
  return err;

 return 0;
}
