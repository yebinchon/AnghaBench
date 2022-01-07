
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* sta_rc_update ) (int *,TYPE_2__*,struct ieee80211_sta*,int) ;} ;


 int IEEE80211_RC_SUPP_RATES_CHANGED ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int WARN_ON (int) ;
 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 struct ieee80211_sub_if_data* get_bss_sdata (struct ieee80211_sub_if_data*) ;
 int stub1 (int *,TYPE_2__*,struct ieee80211_sta*,int) ;
 int trace_drv_return_void (struct ieee80211_local*) ;
 int trace_drv_sta_rc_update (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_sta*,int) ;

void drv_sta_rc_update(struct ieee80211_local *local,
         struct ieee80211_sub_if_data *sdata,
         struct ieee80211_sta *sta, u32 changed)
{
 sdata = get_bss_sdata(sdata);
 if (!check_sdata_in_driver(sdata))
  return;

 WARN_ON(changed & IEEE80211_RC_SUPP_RATES_CHANGED &&
  (sdata->vif.type != NL80211_IFTYPE_ADHOC &&
   sdata->vif.type != NL80211_IFTYPE_MESH_POINT));

 trace_drv_sta_rc_update(local, sdata, sta, changed);
 if (local->ops->sta_rc_update)
  local->ops->sta_rc_update(&local->hw, &sdata->vif,
       sta, changed);

 trace_drv_return_void(local);
}
