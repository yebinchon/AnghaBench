
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; struct devlink** user_ptr; struct netlink_ext_ack* extack; } ;
struct devlink_trap_group_item {int dummy; } ;
struct devlink {int trap_group_list; } ;


 int DEVLINK_CMD_TRAP_GROUP_NEW ;
 int ENOENT ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int devlink_nl_trap_group_fill (struct sk_buff*,struct devlink*,struct devlink_trap_group_item*,int ,int ,int ,int ) ;
 struct devlink_trap_group_item* devlink_trap_group_item_get_from_info (struct devlink*,struct genl_info*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 scalar_t__ list_empty (int *) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int devlink_nl_cmd_trap_group_get_doit(struct sk_buff *skb,
           struct genl_info *info)
{
 struct netlink_ext_ack *extack = info->extack;
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_trap_group_item *group_item;
 struct sk_buff *msg;
 int err;

 if (list_empty(&devlink->trap_group_list))
  return -EOPNOTSUPP;

 group_item = devlink_trap_group_item_get_from_info(devlink, info);
 if (!group_item) {
  NL_SET_ERR_MSG_MOD(extack, "Device did not register this trap group");
  return -ENOENT;
 }

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 err = devlink_nl_trap_group_fill(msg, devlink, group_item,
      DEVLINK_CMD_TRAP_GROUP_NEW,
      info->snd_portid, info->snd_seq, 0);
 if (err)
  goto err_trap_group_fill;

 return genlmsg_reply(msg, info);

err_trap_group_fill:
 nlmsg_free(msg);
 return err;
}
