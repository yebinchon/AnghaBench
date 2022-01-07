
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ieee80211_sub_if_data {int vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_2__ {int (* get_et_stats ) (int *,int *,struct ethtool_stats*,int *) ;} ;


 int stub1 (int *,int *,struct ethtool_stats*,int *) ;
 int trace_drv_get_et_stats (struct ieee80211_local*) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_get_et_stats(struct ieee80211_sub_if_data *sdata,
        struct ethtool_stats *stats,
        u64 *data)
{
 struct ieee80211_local *local = sdata->local;
 if (local->ops->get_et_stats) {
  trace_drv_get_et_stats(local);
  local->ops->get_et_stats(&local->hw, &sdata->vif, stats, data);
  trace_drv_return_void(local);
 }
}
