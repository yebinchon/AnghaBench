
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int ht_supported; } ;
struct ieee80211_sta_vht_cap {int cap; } ;
struct TYPE_4__ {int bandwidth; TYPE_1__ ht_cap; struct ieee80211_sta_vht_cap vht_cap; } ;
struct sta_info {TYPE_2__ sta; } ;
typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;
typedef enum ieee80211_sta_rx_bandwidth { ____Placeholder_ieee80211_sta_rx_bandwidth } ieee80211_sta_rx_bandwidth ;






 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK ;
 int NL80211_CHAN_WIDTH_160 ;
 int NL80211_CHAN_WIDTH_20 ;
 int NL80211_CHAN_WIDTH_20_NOHT ;
 int NL80211_CHAN_WIDTH_40 ;
 int NL80211_CHAN_WIDTH_80 ;
 int NL80211_CHAN_WIDTH_80P80 ;

enum nl80211_chan_width
ieee80211_sta_rx_bw_to_chan_width(struct sta_info *sta)
{
 enum ieee80211_sta_rx_bandwidth cur_bw = sta->sta.bandwidth;
 struct ieee80211_sta_vht_cap *vht_cap = &sta->sta.vht_cap;
 u32 cap_width;

 switch (cur_bw) {
 case 130:
  if (!sta->sta.ht_cap.ht_supported)
   return NL80211_CHAN_WIDTH_20_NOHT;
  else
   return NL80211_CHAN_WIDTH_20;
 case 129:
  return NL80211_CHAN_WIDTH_40;
 case 128:
  return NL80211_CHAN_WIDTH_80;
 case 131:
  cap_width =
   vht_cap->cap & IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK;

  if (cap_width == IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ)
   return NL80211_CHAN_WIDTH_160;

  return NL80211_CHAN_WIDTH_80P80;
 default:
  return NL80211_CHAN_WIDTH_20;
 }
}
