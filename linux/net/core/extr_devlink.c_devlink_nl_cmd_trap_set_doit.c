
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct genl_info {struct devlink** user_ptr; struct netlink_ext_ack* extack; } ;
struct devlink_trap_item {int dummy; } ;
struct devlink {int trap_list; } ;


 int ENOENT ;
 int EOPNOTSUPP ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int devlink_trap_action_set (struct devlink*,struct devlink_trap_item*,struct genl_info*) ;
 struct devlink_trap_item* devlink_trap_item_get_from_info (struct devlink*,struct genl_info*) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int devlink_nl_cmd_trap_set_doit(struct sk_buff *skb,
     struct genl_info *info)
{
 struct netlink_ext_ack *extack = info->extack;
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_trap_item *trap_item;
 int err;

 if (list_empty(&devlink->trap_list))
  return -EOPNOTSUPP;

 trap_item = devlink_trap_item_get_from_info(devlink, info);
 if (!trap_item) {
  NL_SET_ERR_MSG_MOD(extack, "Device did not register this trap");
  return -ENOENT;
 }

 err = devlink_trap_action_set(devlink, trap_item, info);
 if (err)
  return err;

 return 0;
}
