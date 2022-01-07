
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
struct TYPE_12__ {int bandwidth; int smps_mode; int ht_cap; int max_amsdu_len; } ;
struct sta_info {TYPE_6__ sta; void* cur_max_bandwidth; } ;
struct TYPE_7__ {int tx_params; int* rx_mask; int rx_highest; } ;
struct ieee80211_sta_ht_cap {int ht_supported; int cap; int ampdu_factor; int ampdu_density; TYPE_1__ mcs; } ;
struct ieee80211_supported_band {struct ieee80211_sta_ht_cap ht_cap; } ;
struct TYPE_9__ {int width; } ;
struct TYPE_10__ {TYPE_3__ chandef; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_4__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; } ;
struct TYPE_8__ {int tx_params; int* rx_mask; int rx_highest; } ;
struct ieee80211_ht_cap {int ampdu_params_info; TYPE_2__ mcs; int cap_info; } ;
typedef int ht_cap ;
typedef enum ieee80211_sta_rx_bandwidth { ____Placeholder_ieee80211_sta_rx_bandwidth } ieee80211_sta_rx_bandwidth ;
typedef enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;


 int IEEE80211_HT_AMPDU_PARM_DENSITY ;
 int IEEE80211_HT_AMPDU_PARM_FACTOR ;
 int IEEE80211_HT_CAP_DSSSCCK40 ;
 int IEEE80211_HT_CAP_GRN_FLD ;
 int IEEE80211_HT_CAP_LDPC_CODING ;
 int IEEE80211_HT_CAP_MAX_AMSDU ;
 int IEEE80211_HT_CAP_RX_STBC ;
 int IEEE80211_HT_CAP_SGI_20 ;
 int IEEE80211_HT_CAP_SGI_40 ;
 int IEEE80211_HT_CAP_SM_PS ;
 int IEEE80211_HT_CAP_SM_PS_SHIFT ;
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_HT_CAP_TX_STBC ;
 int IEEE80211_HT_MCS_MASK_LEN ;
 int IEEE80211_HT_MCS_TX_DEFINED ;
 int IEEE80211_HT_MCS_TX_MAX_STREAMS ;
 int IEEE80211_HT_MCS_TX_MAX_STREAMS_MASK ;
 int IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT ;
 int IEEE80211_HT_MCS_TX_RX_DIFF ;
 int IEEE80211_HT_MCS_TX_UNEQUAL_MODULATION ;
 int IEEE80211_HT_MCS_UNEQUAL_MODULATION_START_BYTE ;
 int IEEE80211_MAX_MPDU_LEN_HT_3839 ;
 int IEEE80211_MAX_MPDU_LEN_HT_7935 ;
 int IEEE80211_SMPS_DYNAMIC ;
 int IEEE80211_SMPS_OFF ;
 int IEEE80211_SMPS_STATIC ;
 void* IEEE80211_STA_RX_BW_20 ;
 void* IEEE80211_STA_RX_BW_40 ;






 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int WARN_ON_ONCE (int) ;




 int ieee80211_apply_htcap_overrides (struct ieee80211_sub_if_data*,struct ieee80211_sta_ht_cap*) ;
 int le16_to_cpu (int ) ;
 int memcmp (int *,struct ieee80211_sta_ht_cap*,int) ;
 int memcpy (int *,struct ieee80211_sta_ht_cap*,int) ;
 int memset (struct ieee80211_sta_ht_cap*,int ,int) ;

bool ieee80211_ht_cap_ie_to_sta_ht_cap(struct ieee80211_sub_if_data *sdata,
           struct ieee80211_supported_band *sband,
           const struct ieee80211_ht_cap *ht_cap_ie,
           struct sta_info *sta)
{
 struct ieee80211_sta_ht_cap ht_cap, own_cap;
 u8 ampdu_info, tx_mcs_set_cap;
 int i, max_tx_streams;
 bool changed;
 enum ieee80211_sta_rx_bandwidth bw;
 enum ieee80211_smps_mode smps_mode;

 memset(&ht_cap, 0, sizeof(ht_cap));

 if (!ht_cap_ie || !sband->ht_cap.ht_supported)
  goto apply;

 ht_cap.ht_supported = 1;

 own_cap = sband->ht_cap;







 if (sdata->vif.type == NL80211_IFTYPE_STATION ||
     sdata->vif.type == NL80211_IFTYPE_ADHOC)
  ieee80211_apply_htcap_overrides(sdata, &own_cap);







 ht_cap.cap = le16_to_cpu(ht_cap_ie->cap_info) &
  (own_cap.cap | ~(IEEE80211_HT_CAP_LDPC_CODING |
     IEEE80211_HT_CAP_SUP_WIDTH_20_40 |
     IEEE80211_HT_CAP_GRN_FLD |
     IEEE80211_HT_CAP_SGI_20 |
     IEEE80211_HT_CAP_SGI_40 |
     IEEE80211_HT_CAP_DSSSCCK40));





 if (!(own_cap.cap & IEEE80211_HT_CAP_TX_STBC))
  ht_cap.cap &= ~IEEE80211_HT_CAP_RX_STBC;
 if (!(own_cap.cap & IEEE80211_HT_CAP_RX_STBC))
  ht_cap.cap &= ~IEEE80211_HT_CAP_TX_STBC;

 ampdu_info = ht_cap_ie->ampdu_params_info;
 ht_cap.ampdu_factor =
  ampdu_info & IEEE80211_HT_AMPDU_PARM_FACTOR;
 ht_cap.ampdu_density =
  (ampdu_info & IEEE80211_HT_AMPDU_PARM_DENSITY) >> 2;


 tx_mcs_set_cap = own_cap.mcs.tx_params;


 ht_cap.mcs.tx_params = ht_cap_ie->mcs.tx_params;


 if (!(tx_mcs_set_cap & IEEE80211_HT_MCS_TX_DEFINED))
  goto apply;


 if (tx_mcs_set_cap & IEEE80211_HT_MCS_TX_RX_DIFF)
  max_tx_streams =
   ((tx_mcs_set_cap & IEEE80211_HT_MCS_TX_MAX_STREAMS_MASK)
    >> IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT) + 1;
 else
  max_tx_streams = IEEE80211_HT_MCS_TX_MAX_STREAMS;
 for (i = 0; i < max_tx_streams; i++)
  ht_cap.mcs.rx_mask[i] =
   own_cap.mcs.rx_mask[i] & ht_cap_ie->mcs.rx_mask[i];

 if (tx_mcs_set_cap & IEEE80211_HT_MCS_TX_UNEQUAL_MODULATION)
  for (i = IEEE80211_HT_MCS_UNEQUAL_MODULATION_START_BYTE;
       i < IEEE80211_HT_MCS_MASK_LEN; i++)
   ht_cap.mcs.rx_mask[i] =
    own_cap.mcs.rx_mask[i] &
     ht_cap_ie->mcs.rx_mask[i];


 if (own_cap.mcs.rx_mask[32/8] & ht_cap_ie->mcs.rx_mask[32/8] & 1)
  ht_cap.mcs.rx_mask[32/8] |= 1;


 ht_cap.mcs.rx_highest = ht_cap_ie->mcs.rx_highest;

 if (ht_cap.cap & IEEE80211_HT_CAP_MAX_AMSDU)
  sta->sta.max_amsdu_len = IEEE80211_MAX_MPDU_LEN_HT_7935;
 else
  sta->sta.max_amsdu_len = IEEE80211_MAX_MPDU_LEN_HT_3839;

 apply:
 changed = memcmp(&sta->sta.ht_cap, &ht_cap, sizeof(ht_cap));

 memcpy(&sta->sta.ht_cap, &ht_cap, sizeof(ht_cap));

 switch (sdata->vif.bss_conf.chandef.width) {
 default:
  WARN_ON_ONCE(1);

 case 135:
 case 136:
  bw = IEEE80211_STA_RX_BW_20;
  break;
 case 134:
 case 133:
 case 132:
 case 137:
  bw = ht_cap.cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40 ?
    IEEE80211_STA_RX_BW_40 : IEEE80211_STA_RX_BW_20;
  break;
 }

 sta->sta.bandwidth = bw;

 sta->cur_max_bandwidth =
  ht_cap.cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40 ?
    IEEE80211_STA_RX_BW_40 : IEEE80211_STA_RX_BW_20;

 switch ((ht_cap.cap & IEEE80211_HT_CAP_SM_PS)
   >> IEEE80211_HT_CAP_SM_PS_SHIFT) {
 case 129:
 case 128:
  smps_mode = IEEE80211_SMPS_STATIC;
  break;
 case 130:
  smps_mode = IEEE80211_SMPS_DYNAMIC;
  break;
 case 131:
  smps_mode = IEEE80211_SMPS_OFF;
  break;
 }

 if (smps_mode != sta->sta.smps_mode)
  changed = 1;
 sta->sta.smps_mode = smps_mode;

 return changed;
}
