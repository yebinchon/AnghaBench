
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_tx_info {int flags; } ;
struct ieee80211_tx_data {TYPE_1__* local; int skbs; int * skb; } ;
typedef scalar_t__ ieee80211_tx_result ;
struct TYPE_2__ {int tx_handlers_queued; int hw; int tx_handlers_drop; } ;


 int CALL_TXH (int ) ;
 int HAS_RATE_CONTROL ;
 int I802_DEBUG_INC (int ) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (int *) ;
 int IEEE80211_TX_INTFL_RETRANSMISSION ;
 scalar_t__ TX_CONTINUE ;
 scalar_t__ TX_DROP ;
 scalar_t__ TX_QUEUED ;
 int __skb_queue_tail (int *,int *) ;
 int ieee80211_free_txskb (int *,int *) ;
 int ieee80211_hw_check (int *,int ) ;
 int ieee80211_purge_tx_queue (int *,int *) ;
 int ieee80211_tx_h_calculate_duration ;
 int ieee80211_tx_h_encrypt ;
 int ieee80211_tx_h_fragment ;
 int ieee80211_tx_h_michael_mic_add ;
 int ieee80211_tx_h_sequence ;
 int ieee80211_tx_h_stats ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int invoke_tx_handlers_late(struct ieee80211_tx_data *tx)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx->skb);
 ieee80211_tx_result res = TX_CONTINUE;

 if (unlikely(info->flags & IEEE80211_TX_INTFL_RETRANSMISSION)) {
  __skb_queue_tail(&tx->skbs, tx->skb);
  tx->skb = ((void*)0);
  goto txh_done;
 }

 CALL_TXH(ieee80211_tx_h_michael_mic_add);
 CALL_TXH(ieee80211_tx_h_sequence);
 CALL_TXH(ieee80211_tx_h_fragment);

 CALL_TXH(ieee80211_tx_h_stats);
 CALL_TXH(ieee80211_tx_h_encrypt);
 if (!ieee80211_hw_check(&tx->local->hw, HAS_RATE_CONTROL))
  CALL_TXH(ieee80211_tx_h_calculate_duration);


 txh_done:
 if (unlikely(res == TX_DROP)) {
  I802_DEBUG_INC(tx->local->tx_handlers_drop);
  if (tx->skb)
   ieee80211_free_txskb(&tx->local->hw, tx->skb);
  else
   ieee80211_purge_tx_queue(&tx->local->hw, &tx->skbs);
  return -1;
 } else if (unlikely(res == TX_QUEUED)) {
  I802_DEBUG_INC(tx->local->tx_handlers_queued);
  return -1;
 }

 return 0;
}
