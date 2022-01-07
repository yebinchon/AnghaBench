
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_ampdu_tx {scalar_t__ stop_initiator; scalar_t__ tx_stop; int state; } ;
struct TYPE_2__ {int addr; } ;
struct sta_info {TYPE_1__ sta; int lock; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 int HT_AGG_STATE_STOPPING ;
 scalar_t__ WLAN_BACK_INITIATOR ;
 int WLAN_REASON_QSTA_NOT_USE ;
 int ht_dbg (struct ieee80211_sub_if_data*,char*,int ,int) ;
 int ieee80211_remove_tid_tx (struct sta_info*,int) ;
 int ieee80211_send_delba (struct ieee80211_sub_if_data*,int ,int,scalar_t__,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_bit (int ,int *) ;

void ieee80211_stop_tx_ba_cb(struct sta_info *sta, int tid,
        struct tid_ampdu_tx *tid_tx)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 bool send_delba = 0;

 ht_dbg(sdata, "Stopping Tx BA session for %pM tid %d\n",
        sta->sta.addr, tid);

 spin_lock_bh(&sta->lock);

 if (!test_bit(HT_AGG_STATE_STOPPING, &tid_tx->state)) {
  ht_dbg(sdata,
         "unexpected callback to A-MPDU stop for %pM tid %d\n",
         sta->sta.addr, tid);
  goto unlock_sta;
 }

 if (tid_tx->stop_initiator == WLAN_BACK_INITIATOR && tid_tx->tx_stop)
  send_delba = 1;

 ieee80211_remove_tid_tx(sta, tid);

 unlock_sta:
 spin_unlock_bh(&sta->lock);

 if (send_delba)
  ieee80211_send_delba(sdata, sta->sta.addr, tid,
   WLAN_BACK_INITIATOR, WLAN_REASON_QSTA_NOT_USE);
}
