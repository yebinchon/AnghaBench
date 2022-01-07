
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_ampdu_rx {int reorder_buf_filtered; struct sk_buff_head* reorder_buf; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_rx_status {int flag; } ;


 int BIT_ULL (int) ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_FLAG_AMSDU_MORE ;
 struct sk_buff* skb_peek_tail (struct sk_buff_head*) ;

__attribute__((used)) static inline bool ieee80211_rx_reorder_ready(struct tid_ampdu_rx *tid_agg_rx,
           int index)
{
 struct sk_buff_head *frames = &tid_agg_rx->reorder_buf[index];
 struct sk_buff *tail = skb_peek_tail(frames);
 struct ieee80211_rx_status *status;

 if (tid_agg_rx->reorder_buf_filtered & BIT_ULL(index))
  return 1;

 if (!tail)
  return 0;

 status = IEEE80211_SKB_RXCB(tail);
 if (status->flag & RX_FLAG_AMSDU_MORE)
  return 0;

 return 1;
}
