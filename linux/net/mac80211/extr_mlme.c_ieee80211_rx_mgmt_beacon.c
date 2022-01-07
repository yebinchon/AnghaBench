
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sta_info {int dummy; } ;
struct ieee802_11_elems {int ext_capab_len; int* ext_capab; int cisco_dtpc_elem; int pwr_constr_elem; int country_elem_len; int country_elem; int * opmode_notif; int he_operation; int vht_operation; int ht_operation; int ht_cap_elem; int * erp_info; scalar_t__ dtim_period; int mu_edca_param_set; int wmm_param_len; int wmm_param; int dtim_count; int tim_len; int tim; TYPE_1__* mbssid_config_ie; } ;
struct ieee80211_bss_conf {int ema_ap; int dtim_period; int sync_dtim_count; int sync_device_ts; void* sync_tsf; int p2p_noa_attr; int profile_periodicity; } ;
struct TYPE_18__ {int driver_flags; struct ieee80211_bss_conf bss_conf; scalar_t__ p2p; int chanctx_conf; } ;
struct ieee80211_if_managed {int have_beacon; int flags; scalar_t__ p2p_noa_index; int beacon_crc_valid; scalar_t__ beacon_crc; scalar_t__ csa_waiting_bcn; scalar_t__ powersave; int aid; TYPE_9__* associated; TYPE_2__* assoc_data; scalar_t__ dtim_period; } ;
struct TYPE_15__ {struct ieee80211_if_managed mgd; } ;
struct ieee80211_sub_if_data {TYPE_7__ vif; TYPE_4__ u; struct ieee80211_local* local; } ;
struct ieee80211_rx_status {scalar_t__ freq; int flag; int band; int device_timestamp; int mactime; } ;
struct ieee80211_p2p_noa_attr {scalar_t__ index; } ;
struct TYPE_16__ {int capab_info; int timestamp; scalar_t__ variable; int beacon_int; } ;
struct TYPE_17__ {TYPE_5__ beacon; } ;
struct ieee80211_mgmt {TYPE_6__ u; int bssid; } ;
struct TYPE_14__ {scalar_t__ dynamic_ps_timeout; int flags; } ;
struct TYPE_11__ {TYPE_3__ conf; } ;
struct ieee80211_local {int pspolling; int sta_mtx; int iflist_mtx; TYPE_10__ hw; } ;
struct ieee80211_channel {scalar_t__ center_freq; } ;
struct TYPE_19__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_8__ def; } ;
typedef int noa ;
typedef int deauth_buf ;
struct TYPE_20__ {int * bssid; } ;
struct TYPE_13__ {int need_beacon; int timeout_started; int timeout; TYPE_9__* bss; } ;
struct TYPE_12__ {int profile_periodicity; } ;


 scalar_t__ BSS_CHANGED_BEACON_INFO ;
 scalar_t__ BSS_CHANGED_P2P_PS ;
 scalar_t__ BSS_CHANGED_QOS ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_PS ;
 int IEEE80211_DEAUTH_FRAME_LEN ;
 int IEEE80211_P2P_ATTR_ABSENCE_NOTICE ;
 int IEEE80211_STA_CONNECTION_POLL ;
 int IEEE80211_STA_DISABLE_WMM ;
 int IEEE80211_STYPE_DEAUTH ;
 int IEEE80211_VIF_GET_NOA_UPDATE ;
 int PS_NULLFUNC_STACK ;
 int RX_FLAG_NO_SIGNAL_VAL ;
 int TIMING_BEACON_ONLY ;
 int WLAN_EXT_CAPA11_EMA_SUPPORT ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int care_about_ies ;
 int cfg80211_get_p2p_attr (scalar_t__,size_t,int ,int *,int) ;
 scalar_t__ crc32_be (int ,void*,int) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,scalar_t__) ;
 scalar_t__ ieee80211_check_tim (int ,int ,int ) ;
 int ieee80211_chswitch_post_beacon (struct ieee80211_sub_if_data*) ;
 scalar_t__ ieee80211_config_bw (struct ieee80211_sub_if_data*,struct sta_info*,int ,int ,int ,int ,int *,scalar_t__*) ;
 int ieee80211_handle_beacon_sig (struct ieee80211_sub_if_data*,struct ieee80211_if_managed*,struct ieee80211_bss_conf*,struct ieee80211_local*,struct ieee80211_rx_status*) ;
 scalar_t__ ieee80211_handle_bss_capability (struct ieee80211_sub_if_data*,int ,int,int ) ;
 scalar_t__ ieee80211_handle_pwr_constr (struct ieee80211_sub_if_data*,struct ieee80211_channel*,struct ieee80211_mgmt*,int ,int ,int ,int ) ;
 scalar_t__ ieee80211_hw_check (TYPE_10__*,int ) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_recalc_ps (struct ieee80211_local*) ;
 int ieee80211_recalc_ps_vif (struct ieee80211_sub_if_data*) ;
 scalar_t__ ieee80211_recalc_twt_req (struct ieee80211_sub_if_data*,struct sta_info*,struct ieee802_11_elems*) ;
 int ieee80211_report_disconnect (struct ieee80211_sub_if_data*,int *,int,int,int ) ;
 int ieee80211_reset_ap_probe (struct ieee80211_sub_if_data*) ;
 int ieee80211_rx_bss_info (struct ieee80211_sub_if_data*,struct ieee80211_mgmt*,size_t,struct ieee80211_rx_status*) ;
 scalar_t__ ieee80211_rx_our_beacon (int ,TYPE_9__*) ;
 int ieee80211_send_nullfunc (struct ieee80211_local*,struct ieee80211_sub_if_data*,int) ;
 int ieee80211_send_pspoll (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int ieee80211_set_disassoc (struct ieee80211_sub_if_data*,int ,int ,int,int *) ;
 int ieee80211_sta_process_chanswitch (struct ieee80211_sub_if_data*,int ,int ,struct ieee802_11_elems*,int) ;
 int ieee80211_sta_reset_beacon_monitor (struct ieee80211_sub_if_data*) ;
 scalar_t__ ieee80211_sta_wmm_params (struct ieee80211_local*,struct ieee80211_sub_if_data*,int ,int ,int ) ;
 int ieee80211_vht_handle_opmode (struct ieee80211_sub_if_data*,struct sta_info*,int ,int ) ;
 int ieee802_11_parse_elems (scalar_t__,size_t,int,struct ieee802_11_elems*,int ,int *) ;
 scalar_t__ ieee802_11_parse_elems_crc (scalar_t__,size_t,int,struct ieee802_11_elems*,int ,scalar_t__,int ,int *) ;
 int jiffies ;
 int le16_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int memcpy (int *,struct ieee80211_p2p_noa_attr*,int) ;
 int memset (int *,int ,int) ;
 int mlme_dbg_ratelimited (struct ieee80211_sub_if_data*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int run_again (struct ieee80211_sub_if_data*,int ) ;
 int sdata_assert_lock (struct ieee80211_sub_if_data*) ;
 int sdata_info (struct ieee80211_sub_if_data*,char*,int *) ;
 struct sta_info* sta_info_get (struct ieee80211_sub_if_data*,int *) ;

__attribute__((used)) static void ieee80211_rx_mgmt_beacon(struct ieee80211_sub_if_data *sdata,
         struct ieee80211_mgmt *mgmt, size_t len,
         struct ieee80211_rx_status *rx_status)
{
 struct ieee80211_if_managed *ifmgd = &sdata->u.mgd;
 struct ieee80211_bss_conf *bss_conf = &sdata->vif.bss_conf;
 size_t baselen;
 struct ieee802_11_elems elems;
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_chanctx_conf *chanctx_conf;
 struct ieee80211_channel *chan;
 struct sta_info *sta;
 u32 changed = 0;
 bool erp_valid;
 u8 erp_value = 0;
 u32 ncrc;
 u8 *bssid;
 u8 deauth_buf[IEEE80211_DEAUTH_FRAME_LEN];

 sdata_assert_lock(sdata);


 baselen = (u8 *) mgmt->u.beacon.variable - (u8 *) mgmt;
 if (baselen > len)
  return;

 rcu_read_lock();
 chanctx_conf = rcu_dereference(sdata->vif.chanctx_conf);
 if (!chanctx_conf) {
  rcu_read_unlock();
  return;
 }

 if (rx_status->freq != chanctx_conf->def.chan->center_freq) {
  rcu_read_unlock();
  return;
 }
 chan = chanctx_conf->def.chan;
 rcu_read_unlock();

 if (ifmgd->assoc_data && ifmgd->assoc_data->need_beacon &&
     ieee80211_rx_our_beacon(mgmt->bssid, ifmgd->assoc_data->bss)) {
  ieee802_11_parse_elems(mgmt->u.beacon.variable,
           len - baselen, 0, &elems,
           mgmt->bssid,
           ifmgd->assoc_data->bss->bssid);

  ieee80211_rx_bss_info(sdata, mgmt, len, rx_status);

  if (elems.dtim_period)
   ifmgd->dtim_period = elems.dtim_period;
  ifmgd->have_beacon = 1;
  ifmgd->assoc_data->need_beacon = 0;
  if (ieee80211_hw_check(&local->hw, TIMING_BEACON_ONLY)) {
   sdata->vif.bss_conf.sync_tsf =
    le64_to_cpu(mgmt->u.beacon.timestamp);
   sdata->vif.bss_conf.sync_device_ts =
    rx_status->device_timestamp;
   sdata->vif.bss_conf.sync_dtim_count = elems.dtim_count;
  }

  if (elems.mbssid_config_ie)
   bss_conf->profile_periodicity =
    elems.mbssid_config_ie->profile_periodicity;

  if (elems.ext_capab_len >= 11 &&
      (elems.ext_capab[10] & WLAN_EXT_CAPA11_EMA_SUPPORT))
   bss_conf->ema_ap = 1;


  ifmgd->assoc_data->timeout = jiffies;
  ifmgd->assoc_data->timeout_started = 1;
  run_again(sdata, ifmgd->assoc_data->timeout);
  return;
 }

 if (!ifmgd->associated ||
     !ieee80211_rx_our_beacon(mgmt->bssid, ifmgd->associated))
  return;
 bssid = ifmgd->associated->bssid;

 if (!(rx_status->flag & RX_FLAG_NO_SIGNAL_VAL))
  ieee80211_handle_beacon_sig(sdata, ifmgd, bss_conf,
         local, rx_status);

 if (ifmgd->flags & IEEE80211_STA_CONNECTION_POLL) {
  mlme_dbg_ratelimited(sdata,
         "cancelling AP probe due to a received beacon\n");
  ieee80211_reset_ap_probe(sdata);
 }





 ieee80211_sta_reset_beacon_monitor(sdata);

 ncrc = crc32_be(0, (void *)&mgmt->u.beacon.beacon_int, 4);
 ncrc = ieee802_11_parse_elems_crc(mgmt->u.beacon.variable,
       len - baselen, 0, &elems,
       care_about_ies, ncrc,
       mgmt->bssid, bssid);

 if (ieee80211_hw_check(&local->hw, PS_NULLFUNC_STACK) &&
     ieee80211_check_tim(elems.tim, elems.tim_len, ifmgd->aid)) {
  if (local->hw.conf.dynamic_ps_timeout > 0) {
   if (local->hw.conf.flags & IEEE80211_CONF_PS) {
    local->hw.conf.flags &= ~IEEE80211_CONF_PS;
    ieee80211_hw_config(local,
          IEEE80211_CONF_CHANGE_PS);
   }
   ieee80211_send_nullfunc(local, sdata, 0);
  } else if (!local->pspolling && sdata->u.mgd.powersave) {
   local->pspolling = 1;
   ieee80211_send_pspoll(local, sdata);
  }
 }

 if (sdata->vif.p2p ||
     sdata->vif.driver_flags & IEEE80211_VIF_GET_NOA_UPDATE) {
  struct ieee80211_p2p_noa_attr noa = {};
  int ret;

  ret = cfg80211_get_p2p_attr(mgmt->u.beacon.variable,
         len - baselen,
         IEEE80211_P2P_ATTR_ABSENCE_NOTICE,
         (u8 *) &noa, sizeof(noa));
  if (ret >= 2) {
   if (sdata->u.mgd.p2p_noa_index != noa.index) {

    sdata->u.mgd.p2p_noa_index = noa.index;
    memcpy(&bss_conf->p2p_noa_attr, &noa, sizeof(noa));
    changed |= BSS_CHANGED_P2P_PS;




    ifmgd->beacon_crc_valid = 0;
   }
  } else if (sdata->u.mgd.p2p_noa_index != -1) {

   sdata->u.mgd.p2p_noa_index = -1;
   memset(&bss_conf->p2p_noa_attr, 0, sizeof(bss_conf->p2p_noa_attr));
   changed |= BSS_CHANGED_P2P_PS;
   ifmgd->beacon_crc_valid = 0;
  }
 }

 if (ifmgd->csa_waiting_bcn)
  ieee80211_chswitch_post_beacon(sdata);
 if (ieee80211_hw_check(&local->hw, TIMING_BEACON_ONLY)) {
  sdata->vif.bss_conf.sync_tsf =
   le64_to_cpu(mgmt->u.beacon.timestamp);
  sdata->vif.bss_conf.sync_device_ts =
   rx_status->device_timestamp;
  sdata->vif.bss_conf.sync_dtim_count = elems.dtim_count;
 }

 if (ncrc == ifmgd->beacon_crc && ifmgd->beacon_crc_valid)
  return;
 ifmgd->beacon_crc = ncrc;
 ifmgd->beacon_crc_valid = 1;

 ieee80211_rx_bss_info(sdata, mgmt, len, rx_status);

 ieee80211_sta_process_chanswitch(sdata, rx_status->mactime,
      rx_status->device_timestamp,
      &elems, 1);

 if (!(ifmgd->flags & IEEE80211_STA_DISABLE_WMM) &&
     ieee80211_sta_wmm_params(local, sdata, elems.wmm_param,
         elems.wmm_param_len,
         elems.mu_edca_param_set))
  changed |= BSS_CHANGED_QOS;





 if (!ifmgd->have_beacon) {

  bss_conf->dtim_period = elems.dtim_period ?: 1;

  changed |= BSS_CHANGED_BEACON_INFO;
  ifmgd->have_beacon = 1;

  mutex_lock(&local->iflist_mtx);
  ieee80211_recalc_ps(local);
  mutex_unlock(&local->iflist_mtx);

  ieee80211_recalc_ps_vif(sdata);
 }

 if (elems.erp_info) {
  erp_valid = 1;
  erp_value = elems.erp_info[0];
 } else {
  erp_valid = 0;
 }
 changed |= ieee80211_handle_bss_capability(sdata,
   le16_to_cpu(mgmt->u.beacon.capab_info),
   erp_valid, erp_value);

 mutex_lock(&local->sta_mtx);
 sta = sta_info_get(sdata, bssid);

 changed |= ieee80211_recalc_twt_req(sdata, sta, &elems);

 if (ieee80211_config_bw(sdata, sta,
    elems.ht_cap_elem, elems.ht_operation,
    elems.vht_operation, elems.he_operation,
    bssid, &changed)) {
  mutex_unlock(&local->sta_mtx);
  sdata_info(sdata,
      "failed to follow AP %pM bandwidth change, disconnect\n",
      bssid);
  ieee80211_set_disassoc(sdata, IEEE80211_STYPE_DEAUTH,
           WLAN_REASON_DEAUTH_LEAVING,
           1, deauth_buf);
  ieee80211_report_disconnect(sdata, deauth_buf,
         sizeof(deauth_buf), 1,
         WLAN_REASON_DEAUTH_LEAVING);
  return;
 }

 if (sta && elems.opmode_notif)
  ieee80211_vht_handle_opmode(sdata, sta, *elems.opmode_notif,
         rx_status->band);
 mutex_unlock(&local->sta_mtx);

 changed |= ieee80211_handle_pwr_constr(sdata, chan, mgmt,
            elems.country_elem,
            elems.country_elem_len,
            elems.pwr_constr_elem,
            elems.cisco_dtpc_elem);

 ieee80211_bss_info_change_notify(sdata, changed);
}
