
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ieee80211_sta {int dummy; } ;
struct sta_info {int rate_ctrl_lock; void* rate_ctrl_priv; struct ieee80211_sta sta; } ;
struct rate_control_ref {int priv; TYPE_1__* ops; } ;
struct ieee80211_tx_rate_control {int skb; } ;
struct TYPE_8__ {TYPE_4__* rates; } ;
struct ieee80211_tx_info {TYPE_3__ control; } ;
struct ieee80211_sub_if_data {int vif; TYPE_2__* local; } ;
struct TYPE_9__ {int idx; scalar_t__ count; scalar_t__ flags; } ;
struct TYPE_7__ {int hw; struct rate_control_ref* rate_ctrl; } ;
struct TYPE_6__ {int (* get_rate ) (int ,struct ieee80211_sta*,void*,struct ieee80211_tx_rate_control*) ;} ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int HAS_RATE_CONTROL ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (int ) ;
 int IEEE80211_TX_MAX_RATES ;
 int SUPPORTS_RC_TABLE ;
 int WLAN_STA_RATE_CONTROL ;
 int ieee80211_get_tx_rates (int *,struct ieee80211_sta*,int ,TYPE_4__*,int ) ;
 scalar_t__ ieee80211_hw_check (int *,int ) ;
 scalar_t__ rate_control_send_low (struct ieee80211_sta*,struct ieee80211_tx_rate_control*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (int ,struct ieee80211_sta*,void*,struct ieee80211_tx_rate_control*) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

void rate_control_get_rate(struct ieee80211_sub_if_data *sdata,
      struct sta_info *sta,
      struct ieee80211_tx_rate_control *txrc)
{
 struct rate_control_ref *ref = sdata->local->rate_ctrl;
 void *priv_sta = ((void*)0);
 struct ieee80211_sta *ista = ((void*)0);
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(txrc->skb);
 int i;

 for (i = 0; i < IEEE80211_TX_MAX_RATES; i++) {
  info->control.rates[i].idx = -1;
  info->control.rates[i].flags = 0;
  info->control.rates[i].count = 0;
 }

 if (rate_control_send_low(sta ? &sta->sta : ((void*)0), txrc))
  return;

 if (ieee80211_hw_check(&sdata->local->hw, HAS_RATE_CONTROL))
  return;

 if (sta && test_sta_flag(sta, WLAN_STA_RATE_CONTROL)) {
  ista = &sta->sta;
  priv_sta = sta->rate_ctrl_priv;
 }

 if (ista) {
  spin_lock_bh(&sta->rate_ctrl_lock);
  ref->ops->get_rate(ref->priv, ista, priv_sta, txrc);
  spin_unlock_bh(&sta->rate_ctrl_lock);
 } else {
  rate_control_send_low(((void*)0), txrc);
 }

 if (ieee80211_hw_check(&sdata->local->hw, SUPPORTS_RC_TABLE))
  return;

 ieee80211_get_tx_rates(&sdata->vif, ista, txrc->skb,
          info->control.rates,
          ARRAY_SIZE(info->control.rates));
}
