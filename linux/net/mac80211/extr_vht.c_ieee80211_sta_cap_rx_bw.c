
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int cap; } ;
struct ieee80211_sta_vht_cap {int cap; int vht_supported; } ;
struct TYPE_4__ {TYPE_1__ ht_cap; struct ieee80211_sta_vht_cap vht_cap; } ;
struct sta_info {TYPE_2__ sta; } ;
typedef enum ieee80211_sta_rx_bandwidth { ____Placeholder_ieee80211_sta_rx_bandwidth } ieee80211_sta_rx_bandwidth ;


 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ;
 int IEEE80211_STA_RX_BW_160 ;
 int IEEE80211_STA_RX_BW_20 ;
 int IEEE80211_STA_RX_BW_40 ;
 int IEEE80211_STA_RX_BW_80 ;
 int IEEE80211_VHT_CAP_EXT_NSS_BW_MASK ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ ;
 int IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK ;

enum ieee80211_sta_rx_bandwidth ieee80211_sta_cap_rx_bw(struct sta_info *sta)
{
 struct ieee80211_sta_vht_cap *vht_cap = &sta->sta.vht_cap;
 u32 cap_width;

 if (!vht_cap->vht_supported)
  return sta->sta.ht_cap.cap & IEEE80211_HT_CAP_SUP_WIDTH_20_40 ?
    IEEE80211_STA_RX_BW_40 :
    IEEE80211_STA_RX_BW_20;

 cap_width = vht_cap->cap & IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK;

 if (cap_width == IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ ||
     cap_width == IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ)
  return IEEE80211_STA_RX_BW_160;






 if (vht_cap->cap & IEEE80211_VHT_CAP_EXT_NSS_BW_MASK)
  return IEEE80211_STA_RX_BW_160;

 return IEEE80211_STA_RX_BW_80;
}
