
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct txq_info {int dummy; } ;
struct TYPE_4__ {struct ieee80211_txq** txq; } ;
struct sta_info {TYPE_2__ sta; scalar_t__ uploaded; } ;
struct sk_buff {size_t priority; scalar_t__ data; } ;
struct ieee80211_vif {scalar_t__ type; struct ieee80211_txq* txq; } ;
struct ieee80211_txq {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_local {int dummy; } ;
struct ieee80211_hdr {int frame_control; } ;


 size_t IEEE80211_NUM_TIDS ;
 size_t IEEE80211_QOS_CTL_TID_MASK ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ;
 int IEEE80211_TX_CTRL_PS_RESPONSE ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ ieee80211_is_bufferable_mmpdu (int ) ;
 int ieee80211_is_data_present (int ) ;
 int ieee80211_is_mgmt (int ) ;
 struct txq_info* to_txq_info (struct ieee80211_txq*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct txq_info *ieee80211_get_txq(struct ieee80211_local *local,
       struct ieee80211_vif *vif,
       struct sta_info *sta,
       struct sk_buff *skb)
{
 struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ieee80211_txq *txq = ((void*)0);

 if ((info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) ||
     (info->control.flags & IEEE80211_TX_CTRL_PS_RESPONSE))
  return ((void*)0);

 if (unlikely(!ieee80211_is_data_present(hdr->frame_control))) {
  if ((!ieee80211_is_mgmt(hdr->frame_control) ||
       ieee80211_is_bufferable_mmpdu(hdr->frame_control) ||
       vif->type == NL80211_IFTYPE_STATION) &&
      sta && sta->uploaded) {




   txq = sta->sta.txq[IEEE80211_NUM_TIDS];
  }
 } else if (sta) {
  u8 tid = skb->priority & IEEE80211_QOS_CTL_TID_MASK;

  if (!sta->uploaded)
   return ((void*)0);

  txq = sta->sta.txq[tid];
 } else if (vif) {
  txq = vif->txq;
 }

 if (!txq)
  return ((void*)0);

 return to_txq_info(txq);
}
