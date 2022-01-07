
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct station_info {int dummy; } ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sta_statistics ) (int *,int *,struct ieee80211_sta*,struct station_info*) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 struct ieee80211_sub_if_data* get_bss_sdata (struct ieee80211_sub_if_data*) ;
 int stub1 (int *,int *,struct ieee80211_sta*,struct station_info*) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_sta_statistics (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_sta*) ;

__attribute__((used)) static inline void drv_sta_statistics(struct ieee80211_local *local,
          struct ieee80211_sub_if_data *sdata,
          struct ieee80211_sta *sta,
          struct station_info *sinfo)
{
 sdata = get_bss_sdata(sdata);
 if (!check_sdata_in_driver(sdata))
  return;

 trace_drv_sta_statistics(local, sdata, sta);
 if (local->ops->sta_statistics)
  local->ops->sta_statistics(&local->hw, &sdata->vif, sta, sinfo);
 trace_drv_return_void(local);
}
