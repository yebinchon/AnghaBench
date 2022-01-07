
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_rx_status {int rx_flags; } ;
struct ieee80211_rx_data {int seqno_idx; int security_idx; TYPE_1__* skb; } ;
struct ieee80211_hdr {int frame_control; } ;
struct TYPE_2__ {int priority; scalar_t__ data; } ;


 int IEEE80211_NUM_TIDS ;
 int IEEE80211_QOS_CTL_A_MSDU_PRESENT ;
 int IEEE80211_QOS_CTL_TID_MASK ;
 int IEEE80211_RX_AMSDU ;
 struct ieee80211_rx_status* IEEE80211_SKB_RXCB (TYPE_1__*) ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 scalar_t__ ieee80211_is_mgmt (int ) ;

__attribute__((used)) static void ieee80211_parse_qos(struct ieee80211_rx_data *rx)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)rx->skb->data;
 struct ieee80211_rx_status *status = IEEE80211_SKB_RXCB(rx->skb);
 int tid, seqno_idx, security_idx;


 if (ieee80211_is_data_qos(hdr->frame_control)) {
  u8 *qc = ieee80211_get_qos_ctl(hdr);

  tid = *qc & IEEE80211_QOS_CTL_TID_MASK;
  if (*qc & IEEE80211_QOS_CTL_A_MSDU_PRESENT)
   status->rx_flags |= IEEE80211_RX_AMSDU;

  seqno_idx = tid;
  security_idx = tid;
 } else {
  seqno_idx = IEEE80211_NUM_TIDS;
  security_idx = 0;
  if (ieee80211_is_mgmt(hdr->frame_control))
   security_idx = IEEE80211_NUM_TIDS;
  tid = 0;
 }

 rx->seqno_idx = seqno_idx;
 rx->security_idx = security_idx;


 rx->skb->priority = (tid > 7) ? 0 : tid;
}
