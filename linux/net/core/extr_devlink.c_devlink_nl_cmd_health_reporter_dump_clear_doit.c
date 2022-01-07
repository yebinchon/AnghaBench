
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct genl_info {struct devlink** user_ptr; } ;
struct devlink_health_reporter {int dump_lock; TYPE_1__* ops; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int dump; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int devlink_health_dump_clear (struct devlink_health_reporter*) ;
 struct devlink_health_reporter* devlink_health_reporter_get_from_info (struct devlink*,struct genl_info*) ;
 int devlink_health_reporter_put (struct devlink_health_reporter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
devlink_nl_cmd_health_reporter_dump_clear_doit(struct sk_buff *skb,
            struct genl_info *info)
{
 struct devlink *devlink = info->user_ptr[0];
 struct devlink_health_reporter *reporter;

 reporter = devlink_health_reporter_get_from_info(devlink, info);
 if (!reporter)
  return -EINVAL;

 if (!reporter->ops->dump) {
  devlink_health_reporter_put(reporter);
  return -EOPNOTSUPP;
 }

 mutex_lock(&reporter->dump_lock);
 devlink_health_dump_clear(reporter);
 mutex_unlock(&reporter->dump_lock);
 devlink_health_reporter_put(reporter);
 return 0;
}
