
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {scalar_t__* args; int extack; } ;
struct devlink_health_reporter {scalar_t__ dump_ts; int dump_lock; int dump_fmsg; TYPE_1__* ops; } ;
struct TYPE_2__ {int dump; } ;


 int DEVLINK_CMD_HEALTH_REPORTER_DUMP_GET ;
 int EAGAIN ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int NL_SET_ERR_MSG_MOD (int ,char*) ;
 int devlink_fmsg_dumpit (int ,struct sk_buff*,struct netlink_callback*,int ) ;
 int devlink_health_do_dump (struct devlink_health_reporter*,int *) ;
 struct devlink_health_reporter* devlink_health_reporter_get_from_cb (struct netlink_callback*) ;
 int devlink_health_reporter_put (struct devlink_health_reporter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
devlink_nl_cmd_health_reporter_dump_get_dumpit(struct sk_buff *skb,
            struct netlink_callback *cb)
{
 struct devlink_health_reporter *reporter;
 u64 start = cb->args[0];
 int err;

 reporter = devlink_health_reporter_get_from_cb(cb);
 if (!reporter)
  return -EINVAL;

 if (!reporter->ops->dump) {
  err = -EOPNOTSUPP;
  goto out;
 }
 mutex_lock(&reporter->dump_lock);
 if (!start) {
  err = devlink_health_do_dump(reporter, ((void*)0));
  if (err)
   goto unlock;
  cb->args[1] = reporter->dump_ts;
 }
 if (!reporter->dump_fmsg || cb->args[1] != reporter->dump_ts) {
  NL_SET_ERR_MSG_MOD(cb->extack, "Dump trampled, please retry");
  err = -EAGAIN;
  goto unlock;
 }

 err = devlink_fmsg_dumpit(reporter->dump_fmsg, skb, cb,
      DEVLINK_CMD_HEALTH_REPORTER_DUMP_GET);
unlock:
 mutex_unlock(&reporter->dump_lock);
out:
 devlink_health_reporter_put(reporter);
 return err;
}
