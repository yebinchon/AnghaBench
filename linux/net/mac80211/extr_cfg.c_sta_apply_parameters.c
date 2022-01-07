
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_14__ {scalar_t__ type; int power; } ;
struct station_parameters {int sta_flags_mask; int sta_flags_set; int ext_capab_len; int* ext_capab; int sta_modify_mask; scalar_t__ listen_interval; scalar_t__ support_p2p_ps; scalar_t__ airtime_weight; int opmode_notif; scalar_t__ opmode_notif_used; int he_capa_len; scalar_t__ he_capa; int vht_capa; int ht_capa; int supported_rates_len; int supported_rates; TYPE_6__ txpwr; scalar_t__ aid; int max_sp; int uapsd_queues; } ;
struct TYPE_12__ {scalar_t__ type; int power; } ;
struct TYPE_13__ {int wme; int mfp; int max_amsdu_subframes; scalar_t__ support_p2p_ps; int * supp_rates; TYPE_4__ txpwr; scalar_t__ aid; int max_sp; int uapsd_queues; } ;
struct sta_info {scalar_t__ listen_interval; scalar_t__ airtime_weight; TYPE_5__ sta; struct ieee80211_sub_if_data* sdata; } ;
struct ieee80211_supported_band {size_t band; } ;
struct TYPE_9__ {int chandef; } ;
struct TYPE_15__ {TYPE_1__ bss_conf; } ;
struct TYPE_10__ {int tdls_wider_bw_prohibited; int tdls_chan_switch_prohibited; } ;
struct TYPE_11__ {TYPE_2__ mgd; } ;
struct ieee80211_sub_if_data {TYPE_7__ vif; TYPE_3__ u; } ;
struct TYPE_16__ {scalar_t__ queues; } ;
struct ieee80211_local {TYPE_8__ hw; } ;


 int BIT (int ) ;
 int EINVAL ;
 scalar_t__ IEEE80211_NUM_ACS ;
 int NL80211_STA_FLAG_ASSOCIATED ;
 int NL80211_STA_FLAG_AUTHENTICATED ;
 int NL80211_STA_FLAG_AUTHORIZED ;
 int NL80211_STA_FLAG_MFP ;
 int NL80211_STA_FLAG_SHORT_PREAMBLE ;
 int NL80211_STA_FLAG_TDLS_PEER ;
 int NL80211_STA_FLAG_WME ;
 scalar_t__ NL80211_TX_POWER_LIMITED ;
 int STATION_PARAM_APPLY_STA_TXPOWER ;
 int STATION_PARAM_APPLY_UAPSD ;
 int TDLS_WIDER_BW ;
 int WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH ;
 int WLAN_EXT_CAPA8_MAX_MSDU_IN_AMSDU_LSB ;
 int WLAN_EXT_CAPA8_TDLS_WIDE_BW_ENABLED ;
 int WLAN_EXT_CAPA9_MAX_MSDU_IN_AMSDU_MSB ;
 int WLAN_STA_MFP ;
 int WLAN_STA_SHORT_PREAMBLE ;
 int WLAN_STA_TDLS_CHAN_SWITCH ;
 int WLAN_STA_TDLS_PEER ;
 int WLAN_STA_TDLS_WIDER_BW ;
 int __ieee80211_vht_handle_opmode (struct ieee80211_sub_if_data*,struct sta_info*,int ,size_t) ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int drv_sta_set_txpwr (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct sta_info*) ;
 struct ieee80211_supported_band* ieee80211_get_sband (struct ieee80211_sub_if_data*) ;
 int ieee80211_he_cap_ie_to_sta_he_cap (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,void*,int ,struct sta_info*) ;
 int ieee80211_ht_cap_ie_to_sta_ht_cap (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,int ,struct sta_info*) ;
 scalar_t__ ieee80211_hw_check (TYPE_8__*,int ) ;
 int ieee80211_parse_bitrates (int *,struct ieee80211_supported_band*,int ,int ,int *) ;
 int ieee80211_vht_cap_ie_to_sta_vht_cap (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,int ,struct sta_info*) ;
 scalar_t__ ieee80211_vif_is_mesh (TYPE_7__*) ;
 int set_sta_flag (struct sta_info*,int ) ;
 int sta_apply_auth_flags (struct ieee80211_local*,struct sta_info*,int,int) ;
 int sta_apply_mesh_params (struct ieee80211_local*,struct sta_info*,struct station_parameters*) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static int sta_apply_parameters(struct ieee80211_local *local,
    struct sta_info *sta,
    struct station_parameters *params)
{
 int ret = 0;
 struct ieee80211_supported_band *sband;
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 u32 mask, set;

 sband = ieee80211_get_sband(sdata);
 if (!sband)
  return -EINVAL;

 mask = params->sta_flags_mask;
 set = params->sta_flags_set;

 if (ieee80211_vif_is_mesh(&sdata->vif)) {




  if (mask & BIT(NL80211_STA_FLAG_AUTHENTICATED))
   mask |= BIT(NL80211_STA_FLAG_ASSOCIATED);
  if (set & BIT(NL80211_STA_FLAG_AUTHENTICATED))
   set |= BIT(NL80211_STA_FLAG_ASSOCIATED);
 } else if (test_sta_flag(sta, WLAN_STA_TDLS_PEER)) {





  if (set & BIT(NL80211_STA_FLAG_AUTHORIZED)) {
   set |= BIT(NL80211_STA_FLAG_AUTHENTICATED) |
          BIT(NL80211_STA_FLAG_ASSOCIATED);
   mask |= BIT(NL80211_STA_FLAG_AUTHENTICATED) |
    BIT(NL80211_STA_FLAG_ASSOCIATED);
  }
 }

 if (mask & BIT(NL80211_STA_FLAG_WME) &&
     local->hw.queues >= IEEE80211_NUM_ACS)
  sta->sta.wme = set & BIT(NL80211_STA_FLAG_WME);



 if (!test_sta_flag(sta, WLAN_STA_TDLS_PEER) &&
     !((mask & BIT(NL80211_STA_FLAG_ASSOCIATED)) &&
       (set & BIT(NL80211_STA_FLAG_ASSOCIATED)))) {
  ret = sta_apply_auth_flags(local, sta, mask, set);
  if (ret)
   return ret;
 }

 if (mask & BIT(NL80211_STA_FLAG_SHORT_PREAMBLE)) {
  if (set & BIT(NL80211_STA_FLAG_SHORT_PREAMBLE))
   set_sta_flag(sta, WLAN_STA_SHORT_PREAMBLE);
  else
   clear_sta_flag(sta, WLAN_STA_SHORT_PREAMBLE);
 }

 if (mask & BIT(NL80211_STA_FLAG_MFP)) {
  sta->sta.mfp = !!(set & BIT(NL80211_STA_FLAG_MFP));
  if (set & BIT(NL80211_STA_FLAG_MFP))
   set_sta_flag(sta, WLAN_STA_MFP);
  else
   clear_sta_flag(sta, WLAN_STA_MFP);
 }

 if (mask & BIT(NL80211_STA_FLAG_TDLS_PEER)) {
  if (set & BIT(NL80211_STA_FLAG_TDLS_PEER))
   set_sta_flag(sta, WLAN_STA_TDLS_PEER);
  else
   clear_sta_flag(sta, WLAN_STA_TDLS_PEER);
 }


 if (test_sta_flag(sta, WLAN_STA_TDLS_PEER) &&
     !sdata->u.mgd.tdls_chan_switch_prohibited &&
     params->ext_capab_len >= 4 &&
     params->ext_capab[3] & WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH)
  set_sta_flag(sta, WLAN_STA_TDLS_CHAN_SWITCH);

 if (test_sta_flag(sta, WLAN_STA_TDLS_PEER) &&
     !sdata->u.mgd.tdls_wider_bw_prohibited &&
     ieee80211_hw_check(&local->hw, TDLS_WIDER_BW) &&
     params->ext_capab_len >= 8 &&
     params->ext_capab[7] & WLAN_EXT_CAPA8_TDLS_WIDE_BW_ENABLED)
  set_sta_flag(sta, WLAN_STA_TDLS_WIDER_BW);

 if (params->sta_modify_mask & STATION_PARAM_APPLY_UAPSD) {
  sta->sta.uapsd_queues = params->uapsd_queues;
  sta->sta.max_sp = params->max_sp;
 }


 if (params->ext_capab_len >= 8) {
  u8 val = (params->ext_capab[7] &
     WLAN_EXT_CAPA8_MAX_MSDU_IN_AMSDU_LSB) >> 7;


  if (params->ext_capab_len >= 9) {
   u8 val_msb = params->ext_capab[8] &
    WLAN_EXT_CAPA9_MAX_MSDU_IN_AMSDU_MSB;
   val_msb <<= 1;
   val |= val_msb;
  }

  switch (val) {
  case 1:
   sta->sta.max_amsdu_subframes = 32;
   break;
  case 2:
   sta->sta.max_amsdu_subframes = 16;
   break;
  case 3:
   sta->sta.max_amsdu_subframes = 8;
   break;
  default:
   sta->sta.max_amsdu_subframes = 0;
  }
 }





 if (params->aid)
  sta->sta.aid = params->aid;
 if (params->listen_interval >= 0)
  sta->listen_interval = params->listen_interval;

 if (params->sta_modify_mask & STATION_PARAM_APPLY_STA_TXPOWER) {
  sta->sta.txpwr.type = params->txpwr.type;
  if (params->txpwr.type == NL80211_TX_POWER_LIMITED)
   sta->sta.txpwr.power = params->txpwr.power;
  ret = drv_sta_set_txpwr(local, sdata, sta);
  if (ret)
   return ret;
 }

 if (params->supported_rates && params->supported_rates_len) {
  ieee80211_parse_bitrates(&sdata->vif.bss_conf.chandef,
      sband, params->supported_rates,
      params->supported_rates_len,
      &sta->sta.supp_rates[sband->band]);
 }

 if (params->ht_capa)
  ieee80211_ht_cap_ie_to_sta_ht_cap(sdata, sband,
        params->ht_capa, sta);


 if (params->vht_capa)
  ieee80211_vht_cap_ie_to_sta_vht_cap(sdata, sband,
          params->vht_capa, sta);

 if (params->he_capa)
  ieee80211_he_cap_ie_to_sta_he_cap(sdata, sband,
        (void *)params->he_capa,
        params->he_capa_len, sta);

 if (params->opmode_notif_used) {



  __ieee80211_vht_handle_opmode(sdata, sta, params->opmode_notif,
           sband->band);
 }

 if (params->support_p2p_ps >= 0)
  sta->sta.support_p2p_ps = params->support_p2p_ps;

 if (ieee80211_vif_is_mesh(&sdata->vif))
  sta_apply_mesh_params(local, sta, params);

 if (params->airtime_weight)
  sta->airtime_weight = params->airtime_weight;


 if (test_sta_flag(sta, WLAN_STA_TDLS_PEER) ||
     set & BIT(NL80211_STA_FLAG_ASSOCIATED)) {
  ret = sta_apply_auth_flags(local, sta, mask, set);
  if (ret)
   return ret;
 }

 return 0;
}
