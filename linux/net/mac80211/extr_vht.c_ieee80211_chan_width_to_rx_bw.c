
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;
typedef enum ieee80211_sta_rx_bandwidth { ____Placeholder_ieee80211_sta_rx_bandwidth } ieee80211_sta_rx_bandwidth ;


 int IEEE80211_STA_RX_BW_160 ;
 int IEEE80211_STA_RX_BW_20 ;
 int IEEE80211_STA_RX_BW_40 ;
 int IEEE80211_STA_RX_BW_80 ;






 int WARN_ON_ONCE (int) ;

enum ieee80211_sta_rx_bandwidth
ieee80211_chan_width_to_rx_bw(enum nl80211_chan_width width)
{
 switch (width) {
 case 131:
 case 132:
  return IEEE80211_STA_RX_BW_20;
 case 130:
  return IEEE80211_STA_RX_BW_40;
 case 129:
  return IEEE80211_STA_RX_BW_80;
 case 133:
 case 128:
  return IEEE80211_STA_RX_BW_160;
 default:
  WARN_ON_ONCE(1);
  return IEEE80211_STA_RX_BW_20;
 }
}
