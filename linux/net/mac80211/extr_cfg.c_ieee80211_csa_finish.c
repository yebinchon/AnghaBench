
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {int dummy; } ;
struct ieee80211_sub_if_data {int csa_finalize_work; TYPE_1__* local; } ;
struct TYPE_2__ {int hw; } ;


 int ieee80211_queue_work (int *,int *) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_csa_finish(struct ieee80211_vif *vif)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);

 ieee80211_queue_work(&sdata->local->hw,
        &sdata->csa_finalize_work);
}
