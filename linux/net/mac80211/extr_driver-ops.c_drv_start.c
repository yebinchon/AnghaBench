
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int started; int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* start ) (int *) ;} ;


 int EALREADY ;
 scalar_t__ WARN_ON (int) ;
 int might_sleep () ;
 int smp_mb () ;
 int stub1 (int *) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;
 int trace_drv_start (struct ieee80211_local*) ;

int drv_start(struct ieee80211_local *local)
{
 int ret;

 might_sleep();

 if (WARN_ON(local->started))
  return -EALREADY;

 trace_drv_start(local);
 local->started = 1;

 smp_mb();
 ret = local->ops->start(&local->hw);
 trace_drv_return_int(local, ret);

 if (ret)
  local->started = 0;

 return ret;
}
