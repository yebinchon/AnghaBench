
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_8__ {int ack_signal_filled; int avg_ack_signal; scalar_t__ last_ack_signal; int last_ack; } ;
struct sta_info {int known_smps_mode; TYPE_1__ status_stats; struct ieee80211_sub_if_data* sdata; struct ieee80211_local* local; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_9__ {scalar_t__ ack_signal; scalar_t__ is_valid_ack_signal; } ;
struct ieee80211_tx_info {TYPE_2__ status; } ;
struct TYPE_14__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int smps_mode; TYPE_7__ vif; int recalc_smps; } ;
struct TYPE_10__ {scalar_t__ action; int smps_control; } ;
struct TYPE_11__ {TYPE_3__ ht_smps; } ;
struct TYPE_12__ {scalar_t__ category; TYPE_4__ u; } ;
struct TYPE_13__ {TYPE_5__ action; } ;
struct ieee80211_mgmt {TYPE_6__ u; int frame_control; } ;
struct ieee80211_local {int hw; } ;
struct ieee80211_hdr {int addr1; } ;
typedef scalar_t__ s8 ;
typedef enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_SMPS_DYNAMIC ;
 int IEEE80211_SMPS_OFF ;
 int IEEE80211_SMPS_STATIC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int REPORTS_TX_ACK_STATUS ;
 scalar_t__ WLAN_CATEGORY_HT ;
 scalar_t__ WLAN_HT_ACTION_SMPS ;



 int ewma_avg_signal_add (int *,scalar_t__) ;
 int ieee80211_check_pending_bar (struct sta_info*,int ,int) ;
 int* ieee80211_get_qos_ctl (struct ieee80211_hdr*) ;
 int ieee80211_has_protected (int ) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 scalar_t__ ieee80211_is_action (int ) ;
 scalar_t__ ieee80211_is_data_qos (int ) ;
 int ieee80211_queue_work (int *,int *) ;
 scalar_t__ ieee80211_sdata_running (struct ieee80211_sub_if_data*) ;
 int jiffies ;

__attribute__((used)) static void ieee80211_frame_acked(struct sta_info *sta, struct sk_buff *skb)
{
 struct ieee80211_mgmt *mgmt = (void *) skb->data;
 struct ieee80211_local *local = sta->local;
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_tx_info *txinfo = IEEE80211_SKB_CB(skb);

 if (ieee80211_hw_check(&local->hw, REPORTS_TX_ACK_STATUS)) {
  sta->status_stats.last_ack = jiffies;
  if (txinfo->status.is_valid_ack_signal) {
   sta->status_stats.last_ack_signal =
      (s8)txinfo->status.ack_signal;
   sta->status_stats.ack_signal_filled = 1;
   ewma_avg_signal_add(&sta->status_stats.avg_ack_signal,
         -txinfo->status.ack_signal);
  }
 }

 if (ieee80211_is_data_qos(mgmt->frame_control)) {
  struct ieee80211_hdr *hdr = (void *) skb->data;
  u8 *qc = ieee80211_get_qos_ctl(hdr);
  u16 tid = qc[0] & 0xf;

  ieee80211_check_pending_bar(sta, hdr->addr1, tid);
 }

 if (ieee80211_is_action(mgmt->frame_control) &&
     !ieee80211_has_protected(mgmt->frame_control) &&
     mgmt->u.action.category == WLAN_CATEGORY_HT &&
     mgmt->u.action.u.ht_smps.action == WLAN_HT_ACTION_SMPS &&
     ieee80211_sdata_running(sdata)) {
  enum ieee80211_smps_mode smps_mode;

  switch (mgmt->u.action.u.ht_smps.smps_control) {
  case 129:
   smps_mode = IEEE80211_SMPS_DYNAMIC;
   break;
  case 128:
   smps_mode = IEEE80211_SMPS_STATIC;
   break;
  case 130:
  default:
   smps_mode = IEEE80211_SMPS_OFF;
   break;
  }

  if (sdata->vif.type == NL80211_IFTYPE_STATION) {







   sdata->smps_mode = smps_mode;
   ieee80211_queue_work(&local->hw, &sdata->recalc_smps);
  } else if (sdata->vif.type == NL80211_IFTYPE_AP ||
      sdata->vif.type == NL80211_IFTYPE_AP_VLAN) {
   sta->known_smps_mode = smps_mode;
  }
 }
}
