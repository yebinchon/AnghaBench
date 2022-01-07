
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_health_reporter {int health_state; TYPE_1__* ops; int devlink; } ;
typedef enum devlink_health_reporter_state { ____Placeholder_devlink_health_reporter_state } devlink_health_reporter_state ;
struct TYPE_2__ {int name; } ;


 int DEVLINK_HEALTH_REPORTER_STATE_ERROR ;
 int DEVLINK_HEALTH_REPORTER_STATE_HEALTHY ;
 scalar_t__ WARN_ON (int) ;
 int trace_devlink_health_reporter_state_update (int ,int ,int) ;

void
devlink_health_reporter_state_update(struct devlink_health_reporter *reporter,
         enum devlink_health_reporter_state state)
{
 if (WARN_ON(state != DEVLINK_HEALTH_REPORTER_STATE_HEALTHY &&
      state != DEVLINK_HEALTH_REPORTER_STATE_ERROR))
  return;

 if (reporter->health_state == state)
  return;

 reporter->health_state = state;
 trace_devlink_health_reporter_state_update(reporter->devlink,
         reporter->ops->name, state);
}
