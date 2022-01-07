
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_ampdu_tx {int state; } ;
struct TYPE_2__ {int mtx; int work; } ;
struct sta_info {TYPE_1__ ampdu_mlme; } ;
typedef enum ieee80211_agg_stop_reason { ____Placeholder_ieee80211_agg_stop_reason } ieee80211_agg_stop_reason ;


 int AGG_STOP_DESTROY_STA ;
 int AGG_STOP_PEER_REQUEST ;
 int HT_AGG_STATE_STOP_CB ;
 int IEEE80211_NUM_TIDS ;
 int WLAN_BACK_RECIPIENT ;
 int WLAN_REASON_QSTA_LEAVE_QBSS ;
 int ___ieee80211_stop_rx_ba_session (struct sta_info*,int,int ,int ,int) ;
 int ___ieee80211_stop_tx_ba_session (struct sta_info*,int,int) ;
 int cancel_work_sync (int *) ;
 int ieee80211_stop_tx_ba_cb (struct sta_info*,int,struct tid_ampdu_tx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tid_ampdu_tx* rcu_dereference_protected_tid_tx (struct sta_info*,int) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void ieee80211_sta_tear_down_BA_sessions(struct sta_info *sta,
      enum ieee80211_agg_stop_reason reason)
{
 int i;

 mutex_lock(&sta->ampdu_mlme.mtx);
 for (i = 0; i < IEEE80211_NUM_TIDS; i++)
  ___ieee80211_stop_rx_ba_session(sta, i, WLAN_BACK_RECIPIENT,
      WLAN_REASON_QSTA_LEAVE_QBSS,
      reason != AGG_STOP_DESTROY_STA &&
      reason != AGG_STOP_PEER_REQUEST);

 for (i = 0; i < IEEE80211_NUM_TIDS; i++)
  ___ieee80211_stop_tx_ba_session(sta, i, reason);
 mutex_unlock(&sta->ampdu_mlme.mtx);






 if(reason == AGG_STOP_DESTROY_STA) {
  cancel_work_sync(&sta->ampdu_mlme.work);

  mutex_lock(&sta->ampdu_mlme.mtx);
  for (i = 0; i < IEEE80211_NUM_TIDS; i++) {
   struct tid_ampdu_tx *tid_tx =
    rcu_dereference_protected_tid_tx(sta, i);

   if (!tid_tx)
    continue;

   if (test_and_clear_bit(HT_AGG_STATE_STOP_CB, &tid_tx->state))
    ieee80211_stop_tx_ba_cb(sta, i, tid_tx);
  }
  mutex_unlock(&sta->ampdu_mlme.mtx);
 }
}
