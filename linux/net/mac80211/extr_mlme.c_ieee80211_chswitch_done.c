
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_vif {int dummy; } ;
struct ieee80211_if_managed {int chswitch_work; int csa_connection_drop_work; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_2__* local; TYPE_1__ u; } ;
struct TYPE_4__ {int hw; } ;


 int ieee80211_queue_work (int *,int *) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*) ;
 int trace_api_chswitch_done (struct ieee80211_sub_if_data*,int) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_chswitch_done(struct ieee80211_vif *vif, bool success)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;

 trace_api_chswitch_done(sdata, success);
 if (!success) {
  sdata_info(sdata,
      "driver channel switch failed, disconnecting\n");
  ieee80211_queue_work(&sdata->local->hw,
         &ifmgd->csa_connection_drop_work);
 } else {
  ieee80211_queue_work(&sdata->local->hw, &ifmgd->chswitch_work);
 }
}
