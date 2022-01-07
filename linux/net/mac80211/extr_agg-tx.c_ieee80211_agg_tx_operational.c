
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct tid_ampdu_tx {int state; int amsdu; int buf_size; } ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {int mtx; } ;
struct sta_info {int lock; int sdata; TYPE_2__ sta; TYPE_1__ ampdu_mlme; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_ampdu_params {int amsdu; int buf_size; int ssn; int timeout; int tid; int action; TYPE_2__* sta; } ;


 int HT_AGG_STATE_OPERATIONAL ;
 int IEEE80211_AMPDU_TX_OPERATIONAL ;
 int drv_ampdu_action (struct ieee80211_local*,int ,struct ieee80211_ampdu_params*) ;
 int ht_dbg (int ,char*,int ,int ) ;
 int ieee80211_agg_splice_finish (int ,int ) ;
 int ieee80211_agg_splice_packets (int ,struct tid_ampdu_tx*,int ) ;
 int ieee80211_agg_start_txq (struct sta_info*,int ,int) ;
 int lockdep_assert_held (int *) ;
 struct tid_ampdu_tx* rcu_dereference_protected_tid_tx (struct sta_info*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ieee80211_agg_tx_operational(struct ieee80211_local *local,
      struct sta_info *sta, u16 tid)
{
 struct tid_ampdu_tx *tid_tx;
 struct ieee80211_ampdu_params params = {
  .sta = &sta->sta,
  .action = IEEE80211_AMPDU_TX_OPERATIONAL,
  .tid = tid,
  .timeout = 0,
  .ssn = 0,
 };

 lockdep_assert_held(&sta->ampdu_mlme.mtx);

 tid_tx = rcu_dereference_protected_tid_tx(sta, tid);
 params.buf_size = tid_tx->buf_size;
 params.amsdu = tid_tx->amsdu;

 ht_dbg(sta->sdata, "Aggregation is on for %pM tid %d\n",
        sta->sta.addr, tid);

 drv_ampdu_action(local, sta->sdata, &params);





 spin_lock_bh(&sta->lock);

 ieee80211_agg_splice_packets(sta->sdata, tid_tx, tid);





 set_bit(HT_AGG_STATE_OPERATIONAL, &tid_tx->state);
 ieee80211_agg_splice_finish(sta->sdata, tid);

 spin_unlock_bh(&sta->lock);

 ieee80211_agg_start_txq(sta, tid, 1);
}
