
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; struct devlink** user_ptr; } ;
struct devlink_param_item {int dummy; } ;
struct devlink {int param_list; } ;


 int DEVLINK_CMD_PARAM_GET ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int devlink_nl_param_fill (struct sk_buff*,struct devlink*,int ,struct devlink_param_item*,int ,int ,int ,int ) ;
 struct devlink_param_item* devlink_param_get_from_info (int *,struct genl_info*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int devlink_nl_cmd_param_get_doit(struct sk_buff *skb,
      struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_param_item *param_item;
 struct sk_buff *msg;
 int err;

 param_item = devlink_param_get_from_info(&devlink->param_list, info);
 if (!param_item)
  return -EINVAL;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 err = devlink_nl_param_fill(msg, devlink, 0, param_item,
        DEVLINK_CMD_PARAM_GET,
        info->snd_portid, info->snd_seq, 0);
 if (err) {
  nlmsg_free(msg);
  return err;
 }

 return genlmsg_reply(msg, info);
}
