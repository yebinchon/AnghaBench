
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct wiphy {int * bands; } ;
struct net_device {int dummy; } ;
struct ieee80211_supported_band {scalar_t__ band; } ;
struct TYPE_8__ {int oppps_ctwindow; } ;
struct TYPE_9__ {scalar_t__ use_cts_prot; scalar_t__ use_short_preamble; int use_short_slot; TYPE_3__ p2p_noa_attr; scalar_t__ ht_operation_mode; int basic_rates; int chandef; } ;
struct TYPE_10__ {TYPE_4__ bss_conf; } ;
struct TYPE_6__ {int beacon; } ;
struct TYPE_7__ {TYPE_1__ ap; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; int flags; TYPE_2__ u; } ;
struct bss_parameters {scalar_t__ use_cts_prot; scalar_t__ use_short_preamble; int use_short_slot_time; scalar_t__ ap_isolate; scalar_t__ ht_opmode; int p2p_ctwindow; scalar_t__ p2p_opp_ps; int basic_rates_len; scalar_t__ basic_rates; } ;


 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_ERP_CTS_PROT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 int BSS_CHANGED_HT ;
 int BSS_CHANGED_P2P_PS ;
 int EINVAL ;
 int ENOENT ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IEEE80211_P2P_OPPPS_CTWINDOW_MASK ;
 int IEEE80211_P2P_OPPPS_ENABLE_BIT ;
 int IEEE80211_SDATA_DONT_BRIDGE_PACKETS ;
 scalar_t__ NL80211_BAND_5GHZ ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int ieee80211_check_fast_rx_iface (struct ieee80211_sub_if_data*) ;
 int ieee80211_check_rate_mask (struct ieee80211_sub_if_data*) ;
 struct ieee80211_supported_band* ieee80211_get_sband (struct ieee80211_sub_if_data*) ;
 int ieee80211_parse_bitrates (int *,int ,scalar_t__,int ,int *) ;
 int sdata_dereference (int ,struct ieee80211_sub_if_data*) ;

__attribute__((used)) static int ieee80211_change_bss(struct wiphy *wiphy,
    struct net_device *dev,
    struct bss_parameters *params)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 struct ieee80211_supported_band *sband;
 u32 changed = 0;

 if (!sdata_dereference(sdata->u.ap.beacon, sdata))
  return -ENOENT;

 sband = ieee80211_get_sband(sdata);
 if (!sband)
  return -EINVAL;

 if (params->use_cts_prot >= 0) {
  sdata->vif.bss_conf.use_cts_prot = params->use_cts_prot;
  changed |= BSS_CHANGED_ERP_CTS_PROT;
 }
 if (params->use_short_preamble >= 0) {
  sdata->vif.bss_conf.use_short_preamble =
   params->use_short_preamble;
  changed |= BSS_CHANGED_ERP_PREAMBLE;
 }

 if (!sdata->vif.bss_conf.use_short_slot &&
     sband->band == NL80211_BAND_5GHZ) {
  sdata->vif.bss_conf.use_short_slot = 1;
  changed |= BSS_CHANGED_ERP_SLOT;
 }

 if (params->use_short_slot_time >= 0) {
  sdata->vif.bss_conf.use_short_slot =
   params->use_short_slot_time;
  changed |= BSS_CHANGED_ERP_SLOT;
 }

 if (params->basic_rates) {
  ieee80211_parse_bitrates(&sdata->vif.bss_conf.chandef,
      wiphy->bands[sband->band],
      params->basic_rates,
      params->basic_rates_len,
      &sdata->vif.bss_conf.basic_rates);
  changed |= BSS_CHANGED_BASIC_RATES;
  ieee80211_check_rate_mask(sdata);
 }

 if (params->ap_isolate >= 0) {
  if (params->ap_isolate)
   sdata->flags |= IEEE80211_SDATA_DONT_BRIDGE_PACKETS;
  else
   sdata->flags &= ~IEEE80211_SDATA_DONT_BRIDGE_PACKETS;
  ieee80211_check_fast_rx_iface(sdata);
 }

 if (params->ht_opmode >= 0) {
  sdata->vif.bss_conf.ht_operation_mode =
   (u16) params->ht_opmode;
  changed |= BSS_CHANGED_HT;
 }

 if (params->p2p_ctwindow >= 0) {
  sdata->vif.bss_conf.p2p_noa_attr.oppps_ctwindow &=
     ~IEEE80211_P2P_OPPPS_CTWINDOW_MASK;
  sdata->vif.bss_conf.p2p_noa_attr.oppps_ctwindow |=
   params->p2p_ctwindow & IEEE80211_P2P_OPPPS_CTWINDOW_MASK;
  changed |= BSS_CHANGED_P2P_PS;
 }

 if (params->p2p_opp_ps > 0) {
  sdata->vif.bss_conf.p2p_noa_attr.oppps_ctwindow |=
     IEEE80211_P2P_OPPPS_ENABLE_BIT;
  changed |= BSS_CHANGED_P2P_PS;
 } else if (params->p2p_opp_ps == 0) {
  sdata->vif.bss_conf.p2p_noa_attr.oppps_ctwindow &=
     ~IEEE80211_P2P_OPPPS_ENABLE_BIT;
  changed |= BSS_CHANGED_P2P_PS;
 }

 ieee80211_bss_info_change_notify(sdata, changed);

 return 0;
}
