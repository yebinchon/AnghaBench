
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct tid_ampdu_rx {int last_rx; scalar_t__ timeout; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int unexpected_agg; int agg_session_valid; int * tid_rx; } ;
struct sta_info {TYPE_2__ sta; TYPE_1__ ampdu_mlme; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_rx_data {TYPE_3__* sdata; struct sta_info* sta; struct ieee80211_local* local; struct sk_buff* skb; } ;
struct ieee80211_local {int hw; } ;
struct ieee80211_hdr {int frame_control; int seq_ctrl; int addr1; } ;
struct TYPE_7__ {int work; int skb_queue; } ;


 size_t IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK ;
 size_t IEEE80211_QOS_CTL_ACK_POLICY_MASK ;
 size_t IEEE80211_QOS_CTL_ACK_POLICY_NORMAL ;
 int IEEE80211_SCTL_FRAG ;
 int IEEE80211_STYPE_NULLFUNC ;
 int WLAN_BACK_RECIPIENT ;
 int WLAN_REASON_QSTA_REQUIRE_SETUP ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int cpu_to_le16 (int ) ;
 size_t* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 size_t ieee80211_get_tid (struct ieee80211_hdr*) ;
 int ieee80211_is_data_qos (int) ;
 int ieee80211_queue_work (int *,int *) ;
 int ieee80211_send_delba (TYPE_3__*,int ,size_t,int ,int ) ;
 scalar_t__ ieee80211_sta_manage_reorder_buf (TYPE_3__*,struct tid_ampdu_rx*,struct sk_buff*,struct sk_buff_head*) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int jiffies ;
 int le16_to_cpu (int ) ;
 struct tid_ampdu_rx* rcu_dereference (int ) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int test_and_set_bit (size_t,int ) ;
 int test_bit (size_t,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ieee80211_rx_reorder_ampdu(struct ieee80211_rx_data *rx,
           struct sk_buff_head *frames)
{
 struct sk_buff *skb = rx->skb;
 struct ieee80211_local *local = rx->local;
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct sta_info *sta = rx->sta;
 struct tid_ampdu_rx *tid_agg_rx;
 u16 sc;
 u8 tid, ack_policy;

 if (!ieee80211_is_data_qos(hdr->frame_control) ||
     is_multicast_ether_addr(hdr->addr1))
  goto dont_reorder;






 if (!sta)
  goto dont_reorder;

 ack_policy = *ieee80211_get_qos_ctl(hdr) &
       IEEE80211_QOS_CTL_ACK_POLICY_MASK;
 tid = ieee80211_get_tid(hdr);

 tid_agg_rx = rcu_dereference(sta->ampdu_mlme.tid_rx[tid]);
 if (!tid_agg_rx) {
  if (ack_policy == IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK &&
      !test_bit(tid, rx->sta->ampdu_mlme.agg_session_valid) &&
      !test_and_set_bit(tid, rx->sta->ampdu_mlme.unexpected_agg))
   ieee80211_send_delba(rx->sdata, rx->sta->sta.addr, tid,
          WLAN_BACK_RECIPIENT,
          WLAN_REASON_QSTA_REQUIRE_SETUP);
  goto dont_reorder;
 }


 if (unlikely(hdr->frame_control & cpu_to_le16(IEEE80211_STYPE_NULLFUNC)))
  goto dont_reorder;


 if (ack_policy != IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK &&
     ack_policy != IEEE80211_QOS_CTL_ACK_POLICY_NORMAL)
  goto dont_reorder;




 if (tid_agg_rx->timeout)
  tid_agg_rx->last_rx = jiffies;


 sc = le16_to_cpu(hdr->seq_ctrl);
 if (sc & IEEE80211_SCTL_FRAG) {
  skb_queue_tail(&rx->sdata->skb_queue, skb);
  ieee80211_queue_work(&local->hw, &rx->sdata->work);
  return;
 }
 if (ieee80211_sta_manage_reorder_buf(rx->sdata, tid_agg_rx, skb,
          frames))
  return;

 dont_reorder:
 __skb_queue_tail(frames, skb);
}
