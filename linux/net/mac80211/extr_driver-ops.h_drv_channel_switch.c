
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct ieee80211_channel_switch {int dummy; } ;
struct TYPE_2__ {int (* channel_switch ) (int *,int *,struct ieee80211_channel_switch*) ;} ;


 int might_sleep () ;
 int stub1 (int *,int *,struct ieee80211_channel_switch*) ;
 int trace_drv_channel_switch (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_channel_switch*) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_channel_switch(struct ieee80211_local *local,
          struct ieee80211_sub_if_data *sdata,
          struct ieee80211_channel_switch *ch_switch)
{
 might_sleep();

 trace_drv_channel_switch(local, sdata, ch_switch);
 local->ops->channel_switch(&local->hw, &sdata->vif, ch_switch);
 trace_drv_return_void(local);
}
