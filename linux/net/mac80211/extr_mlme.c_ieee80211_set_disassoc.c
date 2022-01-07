
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {int * position; int * membership; } ;
struct TYPE_10__ {int assoc; int qos; int * beacon_rate; scalar_t__ dtim_period; scalar_t__ arp_addr_cnt; TYPE_2__ mu_group; int p2p_noa_attr; } ;
struct TYPE_11__ {int mu_mimo_owner; int csa_active; TYPE_4__ bss_conf; } ;
struct ieee80211_if_managed {int have_beacon; int p2p_noa_index; int csa_waiting_bcn; int csa_ignored_same_chan; int tx_tspec_wk; int * tx_tspec; scalar_t__ flags; int chswitch_timer; int timer; int bcn_mon_timer; int conn_mon_timer; int vht_capa_mask; int vht_capa; int ht_capa_mask; int ht_capa; int bssid; int * associated; } ;
struct TYPE_9__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {int csa_block_tx; int encrypt_headroom; TYPE_5__ vif; TYPE_3__ u; int ap_power_level; struct ieee80211_local* local; int dev; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_12__ {TYPE_1__ conf; } ;
struct ieee80211_local {int mtx; int dynamic_ps_enable_work; int dynamic_ps_timer; TYPE_6__ hw; int * ps_sdata; } ;


 int BSS_CHANGED_ARP_FILTER ;
 int BSS_CHANGED_ASSOC ;
 int BSS_CHANGED_BSSID ;
 int BSS_CHANGED_HT ;
 int BSS_CHANGED_MU_GROUPS ;
 int BSS_CHANGED_QOS ;
 int DEAUTH_NEED_MGD_TX_PREP ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_PS ;
 int IEEE80211_ENCRYPT_HEADROOM ;
 int IEEE80211_QUEUE_STOP_REASON_CSA ;
 int IEEE80211_UNSET_POWER_LEVEL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int drv_mgd_prepare_tx (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int eth_zero_addr (int ) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int) ;
 int ieee80211_flush_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ;
 scalar_t__ ieee80211_hw_check (TYPE_6__*,int ) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_led_assoc (struct ieee80211_local*,int ) ;
 int ieee80211_recalc_ps_vif (struct ieee80211_sub_if_data*) ;
 int ieee80211_reset_erp_info (struct ieee80211_sub_if_data*) ;
 int ieee80211_send_deauth_disassoc (struct ieee80211_sub_if_data*,int ,int ,int ,int ,int,int *) ;
 int ieee80211_set_wmm_default (struct ieee80211_sub_if_data*,int,int) ;
 int ieee80211_stop_poll (struct ieee80211_sub_if_data*) ;
 int ieee80211_vif_release_channel (struct ieee80211_sub_if_data*) ;
 int ieee80211_wake_vif_queues (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ) ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_carrier_off (int ) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 int sta_info_flush (struct ieee80211_sub_if_data*) ;
 int synchronize_net () ;

__attribute__((used)) static void ieee80211_set_disassoc(struct ieee80211_sub_if_data *sdata,
       u16 stype, u16 reason, bool tx,
       u8 *frame_buf)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_local *local = sdata->local;
 u32 changed = 0;

 sdata_assert_lock(sdata);

 if (WARN_ON_ONCE(tx && !frame_buf))
  return;

 if (WARN_ON(!ifmgd->associated))
  return;

 ieee80211_stop_poll(sdata);

 ifmgd->associated = ((void*)0);
 netif_carrier_off(sdata->dev);






 if (local->hw.conf.flags & IEEE80211_CONF_PS) {
  local->hw.conf.flags &= ~IEEE80211_CONF_PS;
  ieee80211_hw_config(local, IEEE80211_CONF_CHANGE_PS);
 }
 local->ps_sdata = ((void*)0);


 ieee80211_recalc_ps_vif(sdata);


 synchronize_net();







 if (tx)
  ieee80211_flush_queues(local, sdata, 1);


 if (tx || frame_buf) {






  if (ieee80211_hw_check(&local->hw, DEAUTH_NEED_MGD_TX_PREP) &&
      !ifmgd->have_beacon)
   drv_mgd_prepare_tx(sdata->local, sdata, 0);

  ieee80211_send_deauth_disassoc(sdata, ifmgd->bssid,
            ifmgd->bssid, stype, reason,
            tx, frame_buf);
 }


 if (tx)
  ieee80211_flush_queues(local, sdata, 0);


 eth_zero_addr(ifmgd->bssid);


 sta_info_flush(sdata);


 changed |= ieee80211_reset_erp_info(sdata);

 ieee80211_led_assoc(local, 0);
 changed |= BSS_CHANGED_ASSOC;
 sdata->vif.bss_conf.assoc = 0;

 ifmgd->p2p_noa_index = -1;
 memset(&sdata->vif.bss_conf.p2p_noa_attr, 0,
        sizeof(sdata->vif.bss_conf.p2p_noa_attr));


 memset(&ifmgd->ht_capa, 0, sizeof(ifmgd->ht_capa));
 memset(&ifmgd->ht_capa_mask, 0, sizeof(ifmgd->ht_capa_mask));
 memset(&ifmgd->vht_capa, 0, sizeof(ifmgd->vht_capa));
 memset(&ifmgd->vht_capa_mask, 0, sizeof(ifmgd->vht_capa_mask));


 memset(sdata->vif.bss_conf.mu_group.membership, 0,
        sizeof(sdata->vif.bss_conf.mu_group.membership));
 memset(sdata->vif.bss_conf.mu_group.position, 0,
        sizeof(sdata->vif.bss_conf.mu_group.position));
 changed |= BSS_CHANGED_MU_GROUPS;
 sdata->vif.mu_mimo_owner = 0;

 sdata->ap_power_level = IEEE80211_UNSET_POWER_LEVEL;

 del_timer_sync(&local->dynamic_ps_timer);
 cancel_work_sync(&local->dynamic_ps_enable_work);


 if (sdata->vif.bss_conf.arp_addr_cnt)
  changed |= BSS_CHANGED_ARP_FILTER;

 sdata->vif.bss_conf.qos = 0;
 changed |= BSS_CHANGED_QOS;


 changed |= BSS_CHANGED_BSSID | BSS_CHANGED_HT;
 ieee80211_bss_info_change_notify(sdata, changed);


 ieee80211_set_wmm_default(sdata, 0, 0);

 del_timer_sync(&sdata->u.mgd.conn_mon_timer);
 del_timer_sync(&sdata->u.mgd.bcn_mon_timer);
 del_timer_sync(&sdata->u.mgd.timer);
 del_timer_sync(&sdata->u.mgd.chswitch_timer);

 sdata->vif.bss_conf.dtim_period = 0;
 sdata->vif.bss_conf.beacon_rate = ((void*)0);

 ifmgd->have_beacon = 0;

 ifmgd->flags = 0;
 mutex_lock(&local->mtx);
 ieee80211_vif_release_channel(sdata);

 sdata->vif.csa_active = 0;
 ifmgd->csa_waiting_bcn = 0;
 ifmgd->csa_ignored_same_chan = 0;
 if (sdata->csa_block_tx) {
  ieee80211_wake_vif_queues(local, sdata,
       IEEE80211_QUEUE_STOP_REASON_CSA);
  sdata->csa_block_tx = 0;
 }
 mutex_unlock(&local->mtx);


 memset(ifmgd->tx_tspec, 0, sizeof(ifmgd->tx_tspec));
 cancel_delayed_work_sync(&ifmgd->tx_tspec_wk);

 sdata->encrypt_headroom = IEEE80211_ENCRYPT_HEADROOM;
}
