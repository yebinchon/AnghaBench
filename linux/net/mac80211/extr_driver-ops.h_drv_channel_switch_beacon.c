
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_2__ {int (* channel_switch_beacon ) (int *,int *,struct cfg80211_chan_def*) ;} ;


 int stub1 (int *,int *,struct cfg80211_chan_def*) ;
 int trace_drv_channel_switch_beacon (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_chan_def*) ;

__attribute__((used)) static inline void
drv_channel_switch_beacon(struct ieee80211_sub_if_data *sdata,
     struct cfg80211_chan_def *chandef)
{
 struct ieee80211_local *local = sdata->local;

 if (local->ops->channel_switch_beacon) {
  trace_drv_channel_switch_beacon(local, sdata, chandef);
  local->ops->channel_switch_beacon(&local->hw, &sdata->vif,
        chandef);
 }
}
