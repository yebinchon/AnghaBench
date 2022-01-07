
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; struct devlink** user_ptr; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink {int dummy; } ;


 int DEVLINK_CMD_HEALTH_REPORTER_GET ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 struct devlink_health_reporter* devlink_health_reporter_get_from_info (struct devlink*,struct genl_info*) ;
 int devlink_health_reporter_put (struct devlink_health_reporter*) ;
 int devlink_nl_health_reporter_fill (struct sk_buff*,struct devlink*,struct devlink_health_reporter*,int ,int ,int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int devlink_nl_cmd_health_reporter_get_doit(struct sk_buff *skb,
         struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_health_reporter *reporter;
 struct sk_buff *msg;
 int err;

 reporter = devlink_health_reporter_get_from_info(devlink, info);
 if (!reporter)
  return -EINVAL;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg) {
  err = -ENOMEM;
  goto out;
 }

 err = devlink_nl_health_reporter_fill(msg, devlink, reporter,
           DEVLINK_CMD_HEALTH_REPORTER_GET,
           info->snd_portid, info->snd_seq,
           0);
 if (err) {
  nlmsg_free(msg);
  goto out;
 }

 err = genlmsg_reply(msg, info);
out:
 devlink_health_reporter_put(reporter);
 return err;
}
