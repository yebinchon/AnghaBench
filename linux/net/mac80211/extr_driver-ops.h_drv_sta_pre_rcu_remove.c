
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int sta; } ;
struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sta_pre_rcu_remove ) (int *,int *,int *) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 struct ieee80211_sub_if_data* get_bss_sdata (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,int *,int *) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_sta_pre_rcu_remove (struct ieee80211_local*,struct ieee80211_sub_if_data*,int *) ;

__attribute__((used)) static inline void drv_sta_pre_rcu_remove(struct ieee80211_local *local,
       struct ieee80211_sub_if_data *sdata,
       struct sta_info *sta)
{
 might_sleep();

 sdata = get_bss_sdata(sdata);
 if (!check_sdata_in_driver(sdata))
  return;

 trace_drv_sta_pre_rcu_remove(local, sdata, &sta->sta);
 if (local->ops->sta_pre_rcu_remove)
  local->ops->sta_pre_rcu_remove(&local->hw, &sdata->vif,
            &sta->sta);
 trace_drv_return_void(local);
}
