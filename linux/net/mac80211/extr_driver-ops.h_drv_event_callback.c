
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct ieee80211_event {int dummy; } ;
struct TYPE_2__ {int (* event_callback ) (int *,int *,struct ieee80211_event const*) ;} ;


 int stub1 (int *,int *,struct ieee80211_event const*) ;
 int trace_drv_event_callback (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_event const*) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_event_callback(struct ieee80211_local *local,
          struct ieee80211_sub_if_data *sdata,
          const struct ieee80211_event *event)
{
 trace_drv_event_callback(local, sdata, event);
 if (local->ops->event_callback)
  local->ops->event_callback(&local->hw, &sdata->vif, event);
 trace_drv_return_void(local);
}
