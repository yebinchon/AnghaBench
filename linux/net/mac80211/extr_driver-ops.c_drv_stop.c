
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int started; int tasklet; int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* stop ) (int *) ;} ;


 scalar_t__ WARN_ON (int) ;
 int barrier () ;
 int might_sleep () ;
 int stub1 (int *) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_stop (struct ieee80211_local*) ;

void drv_stop(struct ieee80211_local *local)
{
 might_sleep();

 if (WARN_ON(!local->started))
  return;

 trace_drv_stop(local);
 local->ops->stop(&local->hw);
 trace_drv_return_void(local);


 tasklet_disable(&local->tasklet);
 tasklet_enable(&local->tasklet);

 barrier();

 local->started = 0;
}
