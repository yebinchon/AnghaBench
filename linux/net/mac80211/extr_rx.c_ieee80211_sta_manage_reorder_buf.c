
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tid_ampdu_rx {int auto_seq; int ssn; int head_seq_num; int buf_size; int started; scalar_t__ stored_mpdu_num; int reorder_lock; int * reorder_time; int * reorder_buf; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int seq_ctrl; } ;


 int IEEE80211_SCTL_SEQ ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (struct sk_buff*) ;
 int RX_FLAG_AMSDU_MORE ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ieee80211_release_reorder_frames (struct ieee80211_sub_if_data*,struct tid_ampdu_rx*,int,struct sk_buff_head*) ;
 scalar_t__ ieee80211_rx_reorder_ready (struct tid_ampdu_rx*,int) ;
 void* ieee80211_sn_inc (int) ;
 scalar_t__ ieee80211_sn_less (int,int) ;
 int ieee80211_sn_sub (int,int) ;
 int ieee80211_sta_reorder_release (struct ieee80211_sub_if_data*,struct tid_ampdu_rx*,struct sk_buff_head*) ;
 int jiffies ;
 int le16_to_cpu (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ieee80211_sta_manage_reorder_buf(struct ieee80211_sub_if_data *sdata,
          struct tid_ampdu_rx *tid_agg_rx,
          struct sk_buff *skb,
          struct sk_buff_head *frames)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(skb);
 u16 sc = le16_to_cpu(hdr->seq_ctrl);
 u16 mpdu_seq_num = (sc & IEEE80211_SCTL_SEQ) >> 4;
 u16 head_seq_num, buf_size;
 int index;
 bool ret = 1;

 spin_lock(&tid_agg_rx->reorder_lock);





 if (unlikely(tid_agg_rx->auto_seq)) {
  tid_agg_rx->auto_seq = 0;
  tid_agg_rx->ssn = mpdu_seq_num;
  tid_agg_rx->head_seq_num = mpdu_seq_num;
 }

 buf_size = tid_agg_rx->buf_size;
 head_seq_num = tid_agg_rx->head_seq_num;





 if (unlikely(!tid_agg_rx->started)) {
  if (ieee80211_sn_less(mpdu_seq_num, head_seq_num)) {
   ret = 0;
   goto out;
  }
  tid_agg_rx->started = 1;
 }


 if (ieee80211_sn_less(mpdu_seq_num, head_seq_num)) {
  dev_kfree_skb(skb);
  goto out;
 }





 if (!ieee80211_sn_less(mpdu_seq_num, head_seq_num + buf_size)) {
  head_seq_num = ieee80211_sn_inc(
    ieee80211_sn_sub(mpdu_seq_num, buf_size));

  ieee80211_release_reorder_frames(sdata, tid_agg_rx,
       head_seq_num, frames);
 }



 index = mpdu_seq_num % tid_agg_rx->buf_size;


 if (ieee80211_rx_reorder_ready(tid_agg_rx, index)) {
  dev_kfree_skb(skb);
  goto out;
 }







 if (mpdu_seq_num == tid_agg_rx->head_seq_num &&
     tid_agg_rx->stored_mpdu_num == 0) {
  if (!(status->flag & RX_FLAG_AMSDU_MORE))
   tid_agg_rx->head_seq_num =
    ieee80211_sn_inc(tid_agg_rx->head_seq_num);
  ret = 0;
  goto out;
 }


 __skb_queue_tail(&tid_agg_rx->reorder_buf[index], skb);
 if (!(status->flag & RX_FLAG_AMSDU_MORE)) {
  tid_agg_rx->reorder_time[index] = jiffies;
  tid_agg_rx->stored_mpdu_num++;
  ieee80211_sta_reorder_release(sdata, tid_agg_rx, frames);
 }

 out:
 spin_unlock(&tid_agg_rx->reorder_lock);
 return ret;
}
