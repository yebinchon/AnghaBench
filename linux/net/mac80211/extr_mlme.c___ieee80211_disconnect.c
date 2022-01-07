
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int csa_active; } ;
struct ieee80211_if_managed {int csa_waiting_bcn; int associated; } ;
struct TYPE_4__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int csa_block_tx; TYPE_3__ vif; TYPE_1__ u; struct ieee80211_local* local; } ;
struct TYPE_5__ {int wiphy; } ;
struct ieee80211_local {int mtx; TYPE_2__ hw; } ;
typedef int frame_buf ;


 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_QUEUE_STOP_REASON_CSA ;
 int IEEE80211_STYPE_DEAUTH ;
 int WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY ;
 int cfg80211_unlink_bss (int ,int ) ;
 int ieee80211_report_disconnect (struct ieee80211_sub_if_data*,int *,int,int,int ) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int ieee80211_wake_vif_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sdata_lock (struct ieee80211_sub_if_data*) ;
 int sdata_unlock (struct ieee80211_sub_if_data*) ;

__attribute__((used)) static void __ieee80211_disconnect(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 u8 frame_buf[IEEE80211_DEAUTH_FRAME_LEN];
 bool tx;

 sdata_lock(sdata);
 if (!ifmgd->associated) {
  sdata_unlock(sdata);
  return;
 }

 tx = !sdata->csa_block_tx;




 cfg80211_unlink_bss(local->hw.wiphy, ifmgd->associated);

 ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DEAUTH,
          WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY,
          tx, frame_buf);
 mutex_lock(&local->mtx);
 sdata->vif.csa_active = 0;
 ifmgd->csa_waiting_bcn = 0;
 if (sdata->csa_block_tx) {
  ieee80211_wake_vif_queues(local, sdata,
       IEEE80211_QUEUE_STOP_REASON_CSA);
  sdata->csa_block_tx = 0;
 }
 mutex_unlock(&local->mtx);

 ieee80211_report_disconnect(sdata, frame_buf, sizeof(frame_buf), tx,
        WLAN_REASON_DISASSOC_DUE_TO_INACTIVITY);

 sdata_unlock(sdata);
}
