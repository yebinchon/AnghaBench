
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_5__ {int is_valid_ack_signal; int ack_signal; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ status; int ack_frame_id; } ;
struct ieee80211_sub_if_data {int wdev; int dev; } ;
struct ieee80211_local {int ack_status_lock; int ack_status_frames; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
struct TYPE_4__ {int cookie; } ;
struct TYPE_6__ {TYPE_1__ ack; } ;


 int GFP_ATOMIC ;
 TYPE_3__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_INTFL_NL80211_FRAME_TX ;
 int cfg80211_mgmt_tx_status (int *,int ,scalar_t__,int ,int,int ) ;
 int cfg80211_probe_status (int ,int ,int ,int,int ,int ,int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* idr_remove (int *,int ) ;
 scalar_t__ ieee80211_is_nullfunc (int ) ;
 scalar_t__ ieee80211_is_qos_nullfunc (int ) ;
 struct ieee80211_sub_if_data* ieee80211_sdata_from_skb (struct ieee80211_local*,struct sk_buff*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_complete_wifi_ack (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ieee80211_report_ack_skb(struct ieee80211_local *local,
         struct ieee80211_tx_info *info,
         bool acked, bool dropped)
{
 struct sk_buff *skb;
 unsigned long flags;

 spin_lock_irqsave(&local->ack_status_lock, flags);
 skb = idr_remove(&local->ack_status_frames, info->ack_frame_id);
 spin_unlock_irqrestore(&local->ack_status_lock, flags);

 if (!skb)
  return;

 if (info->flags & IEEE80211_TX_INTFL_NL80211_FRAME_TX) {
  u64 cookie = IEEE80211_SKB_CB(skb)->ack.cookie;
  struct ieee80211_sub_if_data *sdata;
  struct ieee80211_hdr *hdr = (void *)skb->data;

  rcu_read_lock();
  sdata = ieee80211_sdata_from_skb(local, skb);
  if (sdata) {
   if (ieee80211_is_nullfunc(hdr->frame_control) ||
       ieee80211_is_qos_nullfunc(hdr->frame_control))
    cfg80211_probe_status(sdata->dev, hdr->addr1,
            cookie, acked,
            info->status.ack_signal,
            info->status.is_valid_ack_signal,
            GFP_ATOMIC);
   else
    cfg80211_mgmt_tx_status(&sdata->wdev, cookie,
       skb->data, skb->len,
       acked, GFP_ATOMIC);
  }
  rcu_read_unlock();

  dev_kfree_skb_any(skb);
 } else if (dropped) {
  dev_kfree_skb_any(skb);
 } else {

  skb_complete_wifi_ack(skb, acked);
 }
}
