
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee802_11_elems {int supp_rates_len; int ext_supp_rates_len; scalar_t__ parse_error; scalar_t__ wmm_info; scalar_t__ wmm_param; scalar_t__ ext_supp_rates; scalar_t__ supp_rates; int * erp_info; } ;
struct ieee80211_supported_band {int * bitrates; } ;
struct ieee80211_rx_status {size_t band; scalar_t__ encoding; size_t rate_idx; int device_timestamp; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct ieee80211_local {TYPE_2__ hw; } ;
struct ieee80211_bss {int valid_data; int has_erp_value; int supp_rates_len; int wmm_used; int * beacon_rate; int uapsd_supported; scalar_t__ supp_rates; int erp_value; int corrupt_data; int device_ts_presp; int device_ts_beacon; } ;
struct TYPE_3__ {struct ieee80211_supported_band** bands; } ;


 int IEEE80211_BSS_CORRUPT_BEACON ;
 int IEEE80211_BSS_CORRUPT_PROBE_RESP ;
 int IEEE80211_BSS_VALID_ERP ;
 int IEEE80211_BSS_VALID_RATES ;
 int IEEE80211_BSS_VALID_WMM ;
 int IEEE80211_MAX_SUPP_RATES ;
 scalar_t__ RX_ENC_HT ;
 scalar_t__ RX_ENC_VHT ;
 int is_uapsd_supported (struct ieee802_11_elems*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void
ieee80211_update_bss_from_elems(struct ieee80211_local *local,
    struct ieee80211_bss *bss,
    struct ieee802_11_elems *elems,
    struct ieee80211_rx_status *rx_status,
    bool beacon)
{
 int clen, srlen;

 if (beacon)
  bss->device_ts_beacon = rx_status->device_timestamp;
 else
  bss->device_ts_presp = rx_status->device_timestamp;

 if (elems->parse_error) {
  if (beacon)
   bss->corrupt_data |= IEEE80211_BSS_CORRUPT_BEACON;
  else
   bss->corrupt_data |= IEEE80211_BSS_CORRUPT_PROBE_RESP;
 } else {
  if (beacon)
   bss->corrupt_data &= ~IEEE80211_BSS_CORRUPT_BEACON;
  else
   bss->corrupt_data &= ~IEEE80211_BSS_CORRUPT_PROBE_RESP;
 }


 if (elems->erp_info && (!elems->parse_error ||
    !(bss->valid_data & IEEE80211_BSS_VALID_ERP))) {
  bss->erp_value = elems->erp_info[0];
  bss->has_erp_value = 1;
  if (!elems->parse_error)
   bss->valid_data |= IEEE80211_BSS_VALID_ERP;
 }


 if (!elems->parse_error ||
     !(bss->valid_data & IEEE80211_BSS_VALID_RATES)) {
  srlen = 0;
  if (elems->supp_rates) {
   clen = IEEE80211_MAX_SUPP_RATES;
   if (clen > elems->supp_rates_len)
    clen = elems->supp_rates_len;
   memcpy(bss->supp_rates, elems->supp_rates, clen);
   srlen += clen;
  }
  if (elems->ext_supp_rates) {
   clen = IEEE80211_MAX_SUPP_RATES - srlen;
   if (clen > elems->ext_supp_rates_len)
    clen = elems->ext_supp_rates_len;
   memcpy(bss->supp_rates + srlen, elems->ext_supp_rates,
          clen);
   srlen += clen;
  }
  if (srlen) {
   bss->supp_rates_len = srlen;
   if (!elems->parse_error)
    bss->valid_data |= IEEE80211_BSS_VALID_RATES;
  }
 }

 if (!elems->parse_error ||
     !(bss->valid_data & IEEE80211_BSS_VALID_WMM)) {
  bss->wmm_used = elems->wmm_param || elems->wmm_info;
  bss->uapsd_supported = is_uapsd_supported(elems);
  if (!elems->parse_error)
   bss->valid_data |= IEEE80211_BSS_VALID_WMM;
 }

 if (beacon) {
  struct ieee80211_supported_band *sband =
   local->hw.wiphy->bands[rx_status->band];
  if (!(rx_status->encoding == RX_ENC_HT) &&
      !(rx_status->encoding == RX_ENC_VHT))
   bss->beacon_rate =
    &sband->bitrates[rx_status->rate_idx];
 }
}
