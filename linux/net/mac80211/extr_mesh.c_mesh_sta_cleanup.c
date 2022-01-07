
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sta_info {struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int ieee80211_mbss_info_change_notify (struct ieee80211_sub_if_data*,scalar_t__) ;
 scalar_t__ mesh_plink_deactivate (struct sta_info*) ;

void mesh_sta_cleanup(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 u32 changed = mesh_plink_deactivate(sta);

 if (changed)
  ieee80211_mbss_info_change_notify(sdata, changed);
}
