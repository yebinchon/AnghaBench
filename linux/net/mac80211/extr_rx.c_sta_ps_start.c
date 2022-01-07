
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct txq_info {int schedule_order; } ;
struct TYPE_6__ {struct ieee80211_txq** txq; int aid; int addr; } ;
struct sta_info {int txq_buffered_tids; TYPE_3__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct ps_data {int num_sta_ps; } ;
struct ieee80211_txq {size_t ac; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {TYPE_2__* bss; TYPE_1__ vif; struct ieee80211_local* local; } ;
struct ieee80211_local {int * active_txq_lock; int hw; } ;
struct TYPE_5__ {struct ps_data ps; } ;


 int AP_LINK_PS ;
 int IEEE80211_NUM_TIDS ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 int STA_NOTIFY_SLEEP ;
 int WLAN_STA_PS_STA ;
 int atomic_inc (int *) ;
 int clear_bit (int,int *) ;
 int drv_sta_notify (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ,TYPE_3__*) ;
 int ieee80211_clear_fast_xmit (struct sta_info*) ;
 int ieee80211_hw_check (int *,int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int ps_dbg (struct ieee80211_sub_if_data*,char*,int ,int ) ;
 int set_bit (int,int *) ;
 int set_sta_flag (struct sta_info*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct txq_info* to_txq_info (struct ieee80211_txq*) ;
 scalar_t__ txq_has_queue (struct ieee80211_txq*) ;

__attribute__((used)) static void sta_ps_start(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 struct ieee80211_local *local = sdata->local;
 struct ps_data *ps;
 int tid;

 if (sta->sdata->vif.type == NL80211_IFTYPE_AP ||
     sta->sdata->vif.type == NL80211_IFTYPE_AP_VLAN)
  ps = &sdata->bss->ps;
 else
  return;

 atomic_inc(&ps->num_sta_ps);
 set_sta_flag(sta, WLAN_STA_PS_STA);
 if (!ieee80211_hw_check(&local->hw, AP_LINK_PS))
  drv_sta_notify(local, sdata, STA_NOTIFY_SLEEP, &sta->sta);
 ps_dbg(sdata, "STA %pM aid %d enters power save mode\n",
        sta->sta.addr, sta->sta.aid);

 ieee80211_clear_fast_xmit(sta);

 if (!sta->sta.txq[0])
  return;

 for (tid = 0; tid < IEEE80211_NUM_TIDS; tid++) {
  struct ieee80211_txq *txq = sta->sta.txq[tid];
  struct txq_info *txqi = to_txq_info(txq);

  spin_lock(&local->active_txq_lock[txq->ac]);
  if (!list_empty(&txqi->schedule_order))
   list_del_init(&txqi->schedule_order);
  spin_unlock(&local->active_txq_lock[txq->ac]);

  if (txq_has_queue(txq))
   set_bit(tid, &sta->txq_buffered_tids);
  else
   clear_bit(tid, &sta->txq_buffered_tids);
 }
}
