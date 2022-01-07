
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ type; int mu_mimo_owner; } ;
struct ieee80211_sub_if_data {TYPE_2__ vif; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct ieee80211_bss_conf {int dummy; } ;
struct TYPE_3__ {int (* bss_info_changed ) (int *,TYPE_2__*,struct ieee80211_bss_conf*,int) ;} ;


 int BSS_CHANGED_BEACON ;
 int BSS_CHANGED_BEACON_ENABLED ;
 int BSS_CHANGED_TXPOWER ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 scalar_t__ NL80211_IFTYPE_NAN ;
 scalar_t__ NL80211_IFTYPE_OCB ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,TYPE_2__*,struct ieee80211_bss_conf*,int) ;
 int trace_drv_bss_info_changed (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct ieee80211_bss_conf*,int) ;
 int trace_drv_return_void (struct ieee80211_local*) ;

__attribute__((used)) static inline void drv_bss_info_changed(struct ieee80211_local *local,
     struct ieee80211_sub_if_data *sdata,
     struct ieee80211_bss_conf *info,
     u32 changed)
{
 might_sleep();

 if (WARN_ON_ONCE(changed & (BSS_CHANGED_BEACON |
        BSS_CHANGED_BEACON_ENABLED) &&
    sdata->vif.type != NL80211_IFTYPE_AP &&
    sdata->vif.type != NL80211_IFTYPE_ADHOC &&
    sdata->vif.type != NL80211_IFTYPE_MESH_POINT &&
    sdata->vif.type != NL80211_IFTYPE_OCB))
  return;

 if (WARN_ON_ONCE(sdata->vif.type == NL80211_IFTYPE_P2P_DEVICE ||
    sdata->vif.type == NL80211_IFTYPE_NAN ||
    (sdata->vif.type == NL80211_IFTYPE_MONITOR &&
     !sdata->vif.mu_mimo_owner &&
     !(changed & BSS_CHANGED_TXPOWER))))
  return;

 if (!check_sdata_in_driver(sdata))
  return;

 trace_drv_bss_info_changed(local, sdata, info, changed);
 if (local->ops->bss_info_changed)
  local->ops->bss_info_changed(&local->hw, &sdata->vif, info, changed);
 trace_drv_return_void(local);
}
