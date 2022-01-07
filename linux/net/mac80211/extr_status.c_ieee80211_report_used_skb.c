
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int wifi_acked_valid; int wifi_acked; scalar_t__ destructor; int * dev; scalar_t__ data; } ;
struct ieee80211_tx_info {int flags; scalar_t__ ack_frame_id; } ;
struct ieee80211_sub_if_data {int dummy; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_2__ {int * frag_list; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_INTFL_MLME_CONN_TX ;
 int IEEE80211_TX_STAT_ACK ;
 scalar_t__ WLAN_TDLS_TEARDOWN ;
 scalar_t__ ieee80211_get_tdls_action (struct sk_buff*,unsigned int) ;
 unsigned int ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 int ieee80211_led_tx (struct ieee80211_local*) ;
 int ieee80211_mgd_conn_tx_status (struct ieee80211_sub_if_data*,int ,int) ;
 int ieee80211_report_ack_skb (struct ieee80211_local*,struct ieee80211_tx_info*,int,int) ;
 struct ieee80211_sub_if_data* ieee80211_sdata_from_skb (struct ieee80211_local*,struct sk_buff*) ;
 int ieee80211_tdls_td_tx_handle (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct sk_buff*,int) ;
 int kfree_skb_list (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ skb_has_frag_list (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void ieee80211_report_used_skb(struct ieee80211_local *local,
          struct sk_buff *skb, bool dropped)
{
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_hdr *hdr = (void *)skb->data;
 bool acked = info->flags & IEEE80211_TX_STAT_ACK;

 if (dropped)
  acked = 0;

 if (info->flags & IEEE80211_TX_INTFL_MLME_CONN_TX) {
  struct ieee80211_sub_if_data *sdata;

  rcu_read_lock();

  sdata = ieee80211_sdata_from_skb(local, skb);

  if (!sdata) {
   skb->dev = ((void*)0);
  } else {
   unsigned int hdr_size =
    ieee80211_hdrlen(hdr->frame_control);


   if (ieee80211_is_data(hdr->frame_control) &&
       (ieee80211_get_tdls_action(skb, hdr_size) ==
        WLAN_TDLS_TEARDOWN))
    ieee80211_tdls_td_tx_handle(local, sdata, skb,
           info->flags);
   else
    ieee80211_mgd_conn_tx_status(sdata,
            hdr->frame_control,
            acked);
  }

  rcu_read_unlock();
 } else if (info->ack_frame_id) {
  ieee80211_report_ack_skb(local, info, acked, dropped);
 }

 if (!dropped && skb->destructor) {
  skb->wifi_acked_valid = 1;
  skb->wifi_acked = acked;
 }

 ieee80211_led_tx(local);

 if (skb_has_frag_list(skb)) {
  kfree_skb_list(skb_shinfo(skb)->frag_list);
  skb_shinfo(skb)->frag_list = ((void*)0);
 }
}
