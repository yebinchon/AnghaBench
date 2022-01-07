
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int csa_active; } ;
struct ieee80211_if_managed {int csa_waiting_bcn; int csa_connection_drop_work; } ;
struct TYPE_3__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int csa_block_tx; int reserved_chandef; int dev; TYPE_2__ vif; TYPE_1__ u; struct ieee80211_local* local; } ;
struct ieee80211_local {int hw; } ;


 int IEEE80211_QUEUE_STOP_REASON_CSA ;
 int WARN_ON (int) ;
 int cfg80211_ch_switch_notify (int ,int *) ;
 int drv_post_channel_switch (struct ieee80211_sub_if_data*) ;
 int ieee80211_queue_work (int *,int *) ;
 int ieee80211_wake_vif_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*) ;

__attribute__((used)) static void ieee80211_chswitch_post_beacon(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 int ret;

 sdata_assert_lock(sdata);

 WARN_ON(!sdata->vif.csa_active);

 if (sdata->csa_block_tx) {
  ieee80211_wake_vif_queues(local, sdata,
       IEEE80211_QUEUE_STOP_REASON_CSA);
  sdata->csa_block_tx = 0;
 }

 sdata->vif.csa_active = 0;
 ifmgd->csa_waiting_bcn = 0;

 ret = drv_post_channel_switch(sdata);
 if (ret) {
  sdata_info(sdata,
      "driver post channel switch failed, disconnecting\n");
  ieee80211_queue_work(&local->hw,
         &ifmgd->csa_connection_drop_work);
  return;
 }

 cfg80211_ch_switch_notify(sdata->dev, &sdata->reserved_chandef);
}
