
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct tid_ampdu_tx {int last_tx; int pending; int state; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int * vif; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct ieee80211_tx_data {TYPE_4__* local; TYPE_5__* sta; TYPE_3__* sdata; } ;
struct TYPE_7__ {int aid; int addr; int * txq; } ;
struct TYPE_11__ {int lock; TYPE_1__ sta; int sdata; } ;
struct TYPE_10__ {int hw; } ;
struct TYPE_9__ {int vif; } ;


 int HT_AGG_STATE_OPERATIONAL ;
 int HT_AGG_STATE_WANT_START ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_NO_PS_BUFFER ;
 int IEEE80211_TX_INTFL_NEED_TXPROCESSING ;
 int IEEE80211_TX_TEMPORARY_FLAGS ;
 scalar_t__ STA_MAX_TX_BUFFER ;
 int WLAN_STA_SP ;
 struct sk_buff* __skb_dequeue (int *) ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int clear_sta_flag (TYPE_5__*,int ) ;
 int ieee80211_free_txskb (int *,struct sk_buff*) ;
 int jiffies ;
 int ps_dbg (int ,char*,int ,int ) ;
 struct tid_ampdu_tx* rcu_dereference_protected_tid_tx (TYPE_5__*,int) ;
 scalar_t__ skb_queue_len (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool ieee80211_tx_prep_agg(struct ieee80211_tx_data *tx,
      struct sk_buff *skb,
      struct ieee80211_tx_info *info,
      struct tid_ampdu_tx *tid_tx,
      int tid)
{
 bool queued = 0;
 bool reset_agg_timer = 0;
 struct sk_buff *purge_skb = ((void*)0);

 if (test_bit(HT_AGG_STATE_OPERATIONAL, &tid_tx->state)) {
  info->flags |= IEEE80211_TX_CTL_AMPDU;
  reset_agg_timer = 1;
 } else if (test_bit(HT_AGG_STATE_WANT_START, &tid_tx->state)) {




 } else if (!tx->sta->sta.txq[tid]) {
  spin_lock(&tx->sta->lock);
  tid_tx = rcu_dereference_protected_tid_tx(tx->sta, tid);

  if (!tid_tx) {

  } else if (test_bit(HT_AGG_STATE_OPERATIONAL, &tid_tx->state)) {
   info->flags |= IEEE80211_TX_CTL_AMPDU;
   reset_agg_timer = 1;
  } else {
   queued = 1;
   if (info->flags & IEEE80211_TX_CTL_NO_PS_BUFFER) {
    clear_sta_flag(tx->sta, WLAN_STA_SP);
    ps_dbg(tx->sta->sdata,
           "STA %pM aid %d: SP frame queued, close the SP w/o telling the peer\n",
           tx->sta->sta.addr, tx->sta->sta.aid);
   }
   info->control.vif = &tx->sdata->vif;
   info->flags |= IEEE80211_TX_INTFL_NEED_TXPROCESSING;
   info->flags &= ~IEEE80211_TX_TEMPORARY_FLAGS;
   __skb_queue_tail(&tid_tx->pending, skb);
   if (skb_queue_len(&tid_tx->pending) > STA_MAX_TX_BUFFER)
    purge_skb = __skb_dequeue(&tid_tx->pending);
  }
  spin_unlock(&tx->sta->lock);

  if (purge_skb)
   ieee80211_free_txskb(&tx->local->hw, purge_skb);
 }


 if (reset_agg_timer)
  tid_tx->last_tx = jiffies;

 return queued;
}
