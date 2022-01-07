
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {struct ieee80211_vif vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flush ) (int *,struct ieee80211_vif*,int ,int) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,struct ieee80211_vif*,int ,int) ;
 int trace_drv_flush (struct ieee80211_local*,int ,int) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_flush(struct ieee80211_local *local,
        struct ieee80211_sub_if_data *sdata,
        u32 queues, bool drop)
{
 struct ieee80211_vif *vif = sdata ? &sdata->vif : ((void*)0);

 might_sleep();

 if (sdata && !check_sdata_in_driver(sdata))
  return;

 trace_drv_flush(local, queues, drop);
 if (local->ops->flush)
  local->ops->flush(&local->hw, vif, queues, drop);
 trace_drv_return_void(local);
}
