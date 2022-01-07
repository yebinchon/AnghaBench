
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_ampdu_rx {int head_seq_num; int buf_size; int reorder_timer; scalar_t__* reorder_time; int removed; scalar_t__ stored_mpdu_num; int * reorder_buf; int reorder_lock; } ;
struct sk_buff_head {int dummy; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 scalar_t__ HT_RX_REORDER_BUF_TIMEOUT ;
 int IEEE80211_SN_MASK ;
 int __skb_queue_purge (int *) ;
 int del_timer (int *) ;
 int ht_dbg_ratelimited (struct ieee80211_sub_if_data*,char*) ;
 int ieee80211_release_reorder_frame (struct ieee80211_sub_if_data*,struct tid_ampdu_rx*,int,struct sk_buff_head*) ;
 scalar_t__ ieee80211_rx_reorder_ready (struct tid_ampdu_rx*,int) ;
 int jiffies ;
 int lockdep_assert_held (int *) ;
 int mod_timer (int *,scalar_t__) ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static void ieee80211_sta_reorder_release(struct ieee80211_sub_if_data *sdata,
       struct tid_ampdu_rx *tid_agg_rx,
       struct sk_buff_head *frames)
{
 int index, i, j;

 lockdep_assert_held(&tid_agg_rx->reorder_lock);


 index = tid_agg_rx->head_seq_num % tid_agg_rx->buf_size;
 if (!ieee80211_rx_reorder_ready(tid_agg_rx, index) &&
     tid_agg_rx->stored_mpdu_num) {




  int skipped = 1;
  for (j = (index + 1) % tid_agg_rx->buf_size; j != index;
       j = (j + 1) % tid_agg_rx->buf_size) {
   if (!ieee80211_rx_reorder_ready(tid_agg_rx, j)) {
    skipped++;
    continue;
   }
   if (skipped &&
       !time_after(jiffies, tid_agg_rx->reorder_time[j] +
     HT_RX_REORDER_BUF_TIMEOUT))
    goto set_release_timer;


   for (i = (index + 1) % tid_agg_rx->buf_size; i != j;
        i = (i + 1) % tid_agg_rx->buf_size)
    __skb_queue_purge(&tid_agg_rx->reorder_buf[i]);

   ht_dbg_ratelimited(sdata,
        "release an RX reorder frame due to timeout on earlier frames\n");
   ieee80211_release_reorder_frame(sdata, tid_agg_rx, j,
       frames);




   tid_agg_rx->head_seq_num =
    (tid_agg_rx->head_seq_num +
     skipped) & IEEE80211_SN_MASK;
   skipped = 0;
  }
 } else while (ieee80211_rx_reorder_ready(tid_agg_rx, index)) {
  ieee80211_release_reorder_frame(sdata, tid_agg_rx, index,
      frames);
  index = tid_agg_rx->head_seq_num % tid_agg_rx->buf_size;
 }

 if (tid_agg_rx->stored_mpdu_num) {
  j = index = tid_agg_rx->head_seq_num % tid_agg_rx->buf_size;

  for (; j != (index - 1) % tid_agg_rx->buf_size;
       j = (j + 1) % tid_agg_rx->buf_size) {
   if (ieee80211_rx_reorder_ready(tid_agg_rx, j))
    break;
  }

 set_release_timer:

  if (!tid_agg_rx->removed)
   mod_timer(&tid_agg_rx->reorder_timer,
      tid_agg_rx->reorder_time[j] + 1 +
      HT_RX_REORDER_BUF_TIMEOUT);
 } else {
  del_timer(&tid_agg_rx->reorder_timer);
 }
}
