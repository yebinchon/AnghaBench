
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genl_info {struct devlink** user_ptr; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink {int dummy; } ;


 int EINVAL ;
 struct devlink_health_reporter* devlink_health_reporter_get_from_info (struct devlink*,struct genl_info*) ;
 int devlink_health_reporter_put (struct devlink_health_reporter*) ;
 int devlink_health_reporter_recover (struct devlink_health_reporter*,int *) ;

__attribute__((used)) static int devlink_nl_cmd_health_reporter_recover_doit(struct sk_buff *skb,
             struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_health_reporter *reporter;
 int err;

 reporter = devlink_health_reporter_get_from_info(devlink, info);
 if (!reporter)
  return -EINVAL;

 err = devlink_health_reporter_recover(reporter, ((void*)0));

 devlink_health_reporter_put(reporter);
 return err;
}
