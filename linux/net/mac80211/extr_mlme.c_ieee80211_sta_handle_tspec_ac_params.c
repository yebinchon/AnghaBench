
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;


 int BSS_CHANGED_QOS ;
 scalar_t__ __ieee80211_sta_handle_tspec_ac_params (struct ieee80211_sub_if_data*) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;

void ieee80211_sta_handle_tspec_ac_params(struct ieee80211_sub_if_data *sdata)
{
 if (__ieee80211_sta_handle_tspec_ac_params(sdata))
  ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_QOS);
}
