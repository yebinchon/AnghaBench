
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; int * attrs; struct devlink** user_ptr; } ;
struct devlink_region {int dummy; } ;
struct devlink {int dummy; } ;


 size_t DEVLINK_ATTR_REGION_NAME ;
 int DEVLINK_CMD_REGION_GET ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int devlink_nl_region_fill (struct sk_buff*,struct devlink*,int ,int ,int ,int ,struct devlink_region*) ;
 struct devlink_region* devlink_region_get_by_name (struct devlink*,char const*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 char* nla_data (int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int devlink_nl_cmd_region_get_doit(struct sk_buff *skb,
       struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_region *region;
 const char *region_name;
 struct sk_buff *msg;
 int err;

 if (!info->attrs[DEVLINK_ATTR_REGION_NAME])
  return -EINVAL;

 region_name = nla_data(info->attrs[DEVLINK_ATTR_REGION_NAME]);
 region = devlink_region_get_by_name(devlink, region_name);
 if (!region)
  return -EINVAL;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 err = devlink_nl_region_fill(msg, devlink, DEVLINK_CMD_REGION_GET,
         info->snd_portid, info->snd_seq, 0,
         region);
 if (err) {
  nlmsg_free(msg);
  return err;
 }

 return genlmsg_reply(msg, info);
}
