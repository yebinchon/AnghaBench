
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int wdev; } ;
struct cfg80211_wowlan_wakeup {int dummy; } ;
typedef int gfp_t ;


 int cfg80211_report_wowlan_wakeup (int *,struct cfg80211_wowlan_wakeup*,int ) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_report_wowlan_wakeup(struct ieee80211_vif *vif,
        struct cfg80211_wowlan_wakeup *wakeup,
        gfp_t gfp)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);

 cfg80211_report_wowlan_wakeup(&sdata->wdev, wakeup, gfp);
}
