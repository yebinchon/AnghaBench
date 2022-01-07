
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;


 int BSS_CHANGED_TXPOWER ;
 scalar_t__ __ieee80211_recalc_txpower (struct ieee80211_sub_if_data*) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 scalar_t__ ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;

void ieee80211_recalc_txpower(struct ieee80211_sub_if_data *sdata,
         bool update_bss)
{
 if (__ieee80211_recalc_txpower(sdata) ||
     (update_bss && ieee80211_sdata_running(sdata)))
  ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_TXPOWER);
}
