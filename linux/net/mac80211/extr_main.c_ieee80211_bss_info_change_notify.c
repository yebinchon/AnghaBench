
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; int bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int dummy; } ;


 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 int drv_bss_info_changed (struct ieee80211_local*,struct ieee80211_sub_if_data*,int *,int ) ;

void ieee80211_bss_info_change_notify(struct ieee80211_sub_if_data *sdata,
          u32 changed)
{
 struct ieee80211_local *local = sdata->local;

 if (!changed || sdata->vif.type == NL80211_IFTYPE_AP_VLAN)
  return;

 drv_bss_info_changed(local, sdata, &sdata->vif.bss_conf, changed);
}
