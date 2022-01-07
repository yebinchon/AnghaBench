
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_health_reporter {int last_recovery_ts; int health_state; int recovery_count; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* recover ) (struct devlink_health_reporter*,void*) ;} ;


 int DEVLINK_HEALTH_REPORTER_STATE_HEALTHY ;
 int EOPNOTSUPP ;
 int jiffies ;
 int stub1 (struct devlink_health_reporter*,void*) ;

__attribute__((used)) static int
devlink_health_reporter_recover(struct devlink_health_reporter *reporter,
    void *priv_ctx)
{
 int err;

 if (!reporter->ops->recover)
  return -EOPNOTSUPP;

 err = reporter->ops->recover(reporter, priv_ctx);
 if (err)
  return err;

 reporter->recovery_count++;
 reporter->health_state = DEVLINK_HEALTH_REPORTER_STATE_HEALTHY;
 reporter->last_recovery_ts = jiffies;

 return 0;
}
