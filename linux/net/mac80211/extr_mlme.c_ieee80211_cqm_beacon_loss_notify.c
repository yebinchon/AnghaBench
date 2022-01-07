
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int dev; int local; } ;
typedef int gfp_t ;


 int cfg80211_cqm_beacon_loss_notify (int ,int ) ;
 int trace_api_cqm_beacon_loss_notify (int ,struct ieee80211_sub_if_data*) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_cqm_beacon_loss_notify(struct ieee80211_vif *vif, gfp_t gfp)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);

 trace_api_cqm_beacon_loss_notify(sdata->local, sdata);

 cfg80211_cqm_beacon_loss_notify(sdata->dev, gfp);
}
