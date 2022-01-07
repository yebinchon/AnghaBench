
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_vif {int dummy; } ;
struct TYPE_5__ {int connection_loss; int beacon_connection_loss_work; } ;
struct TYPE_6__ {TYPE_2__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_3__ u; TYPE_1__* local; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {struct ieee80211_hw hw; } ;


 int ieee80211_queue_work (struct ieee80211_hw*,int *) ;
 int trace_api_beacon_loss (struct ieee80211_sub_if_data*) ;
 struct ieee80211_sub_if_data* vif_to_sdata (struct ieee80211_vif*) ;

void ieee80211_beacon_loss(struct ieee80211_vif *vif)
{
 struct ieee80211_sub_if_data *sdata = vif_to_sdata(vif);
 struct ieee80211_hw *hw = &sdata->local->hw;

 trace_api_beacon_loss(sdata);

 sdata->u.mgd.connection_loss = 0;
 ieee80211_queue_work(hw, &sdata->u.mgd.beacon_connection_loss_work);
}
