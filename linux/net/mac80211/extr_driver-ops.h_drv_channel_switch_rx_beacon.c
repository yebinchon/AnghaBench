
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct ieee80211_channel_switch {int dummy; } ;
struct TYPE_2__ {int (* channel_switch_rx_beacon ) (int *,int *,struct ieee80211_channel_switch*) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int stub1 (int *,int *,struct ieee80211_channel_switch*) ;
 int trace_drv_channel_switch_rx_beacon (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_channel_switch*) ;

__attribute__((used)) static inline void
drv_channel_switch_rx_beacon(struct ieee80211_sub_if_data *sdata,
        struct ieee80211_channel_switch *ch_switch)
{
 struct ieee80211_local *local = sdata->local;

 if (!check_sdata_in_driver(sdata))
  return;

 trace_drv_channel_switch_rx_beacon(local, sdata, ch_switch);
 if (local->ops->channel_switch_rx_beacon)
  local->ops->channel_switch_rx_beacon(&local->hw, &sdata->vif,
           ch_switch);
}
