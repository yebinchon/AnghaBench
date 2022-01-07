
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sched_scan_stop ) (int *,int *) ;} ;


 int EIO ;
 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,int *) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;
 int trace_drv_sched_scan_stop (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;

__attribute__((used)) static inline int drv_sched_scan_stop(struct ieee80211_local *local,
          struct ieee80211_sub_if_data *sdata)
{
 int ret;

 might_sleep();

 if (!check_sdata_in_driver(sdata))
  return -EIO;

 trace_drv_sched_scan_stop(local, sdata);
 ret = local->ops->sched_scan_stop(&local->hw, &sdata->vif);
 trace_drv_return_int(local, ret);

 return ret;
}
