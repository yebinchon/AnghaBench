
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {int bandwidth; scalar_t__* supp_rates; } ;
struct TYPE_5__ {int last_rx; } ;
struct sta_info {TYPE_4__* mesh; TYPE_3__ sta; TYPE_1__ rx_stats; } ;
struct ieee802_11_elems {TYPE_2__* ht_operation; int he_cap_len; int he_cap; int vht_cap_elem; int ht_cap_elem; } ;
struct ieee80211_supported_band {size_t band; } ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int dummy; } ;
typedef enum ieee80211_sta_rx_bandwidth { ____Placeholder_ieee80211_sta_rx_bandwidth } ieee80211_sta_rx_bandwidth ;
struct TYPE_8__ {scalar_t__ plink_state; int processed_beacon; int plink_lock; } ;
struct TYPE_6__ {int ht_param; } ;


 int IEEE80211_HT_PARAM_CHAN_WIDTH_ANY ;
 scalar_t__ IEEE80211_RC_BW_CHANGED ;
 scalar_t__ IEEE80211_RC_SUPP_RATES_CHANGED ;
 scalar_t__ IEEE80211_STA_RX_BW_20 ;
 scalar_t__ NL80211_PLINK_ESTAB ;
 int WLAN_STA_RATE_CONTROL ;
 struct ieee80211_supported_band* ieee80211_get_sband (struct ieee80211_sub_if_data*) ;
 int ieee80211_he_cap_ie_to_sta_he_cap (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,int ,int ,struct sta_info*) ;
 scalar_t__ ieee80211_ht_cap_ie_to_sta_ht_cap (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,int ,struct sta_info*) ;
 scalar_t__ ieee80211_sta_get_rates (struct ieee80211_sub_if_data*,struct ieee802_11_elems*,size_t,scalar_t__*) ;
 int ieee80211_vht_cap_ie_to_sta_vht_cap (struct ieee80211_sub_if_data*,struct ieee80211_supported_band*,int ,struct sta_info*) ;
 int jiffies ;
 int rate_control_rate_init (struct sta_info*) ;
 int rate_control_rate_update (struct ieee80211_local*,struct ieee80211_supported_band*,struct sta_info*,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static void mesh_sta_info_init(struct ieee80211_sub_if_data *sdata,
          struct sta_info *sta,
          struct ieee802_11_elems *elems)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_supported_band *sband;
 u32 rates, basic_rates = 0, changed = 0;
 enum ieee80211_sta_rx_bandwidth bw = sta->sta.bandwidth;

 sband = ieee80211_get_sband(sdata);
 if (!sband)
  return;

 rates = ieee80211_sta_get_rates(sdata, elems, sband->band,
     &basic_rates);

 spin_lock_bh(&sta->mesh->plink_lock);
 sta->rx_stats.last_rx = jiffies;


 if (sta->mesh->plink_state == NL80211_PLINK_ESTAB &&
     sta->mesh->processed_beacon)
  goto out;
 sta->mesh->processed_beacon = 1;

 if (sta->sta.supp_rates[sband->band] != rates)
  changed |= IEEE80211_RC_SUPP_RATES_CHANGED;
 sta->sta.supp_rates[sband->band] = rates;

 if (ieee80211_ht_cap_ie_to_sta_ht_cap(sdata, sband,
           elems->ht_cap_elem, sta))
  changed |= IEEE80211_RC_BW_CHANGED;

 ieee80211_vht_cap_ie_to_sta_vht_cap(sdata, sband,
         elems->vht_cap_elem, sta);

 ieee80211_he_cap_ie_to_sta_he_cap(sdata, sband, elems->he_cap,
       elems->he_cap_len, sta);

 if (bw != sta->sta.bandwidth)
  changed |= IEEE80211_RC_BW_CHANGED;


 if (elems->ht_operation &&
     !(elems->ht_operation->ht_param &
       IEEE80211_HT_PARAM_CHAN_WIDTH_ANY)) {
  if (sta->sta.bandwidth != IEEE80211_STA_RX_BW_20)
   changed |= IEEE80211_RC_BW_CHANGED;
  sta->sta.bandwidth = IEEE80211_STA_RX_BW_20;
 }

 if (!test_sta_flag(sta, WLAN_STA_RATE_CONTROL))
  rate_control_rate_init(sta);
 else
  rate_control_rate_update(local, sband, sta, changed);
out:
 spin_unlock_bh(&sta->mesh->plink_lock);
}
