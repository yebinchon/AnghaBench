
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; struct devlink_sb** user_ptr; } ;
struct devlink_sb {TYPE_1__* ops; } ;
struct devlink {TYPE_1__* ops; } ;
struct TYPE_2__ {int sb_pool_get; } ;


 int DEVLINK_CMD_SB_POOL_NEW ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int devlink_nl_sb_pool_fill (struct sk_buff*,struct devlink_sb*,struct devlink_sb*,int ,int ,int ,int ,int ) ;
 int devlink_sb_pool_index_get_from_info (struct devlink_sb*,struct genl_info*,int *) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int devlink_nl_cmd_sb_pool_get_doit(struct sk_buff *skb,
        struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_sb *devlink_sb = info->user_ptr[1];
 struct sk_buff *msg;
 u16 pool_index;
 int err;

 err = devlink_sb_pool_index_get_from_info(devlink_sb, info,
        &pool_index);
 if (err)
  return err;

 if (!devlink->ops->sb_pool_get)
  return -EOPNOTSUPP;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 err = devlink_nl_sb_pool_fill(msg, devlink, devlink_sb, pool_index,
          DEVLINK_CMD_SB_POOL_NEW,
          info->snd_portid, info->snd_seq, 0);
 if (err) {
  nlmsg_free(msg);
  return err;
 }

 return genlmsg_reply(msg, info);
}
