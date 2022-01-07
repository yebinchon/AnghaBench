
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sta_info {int cur_max_bandwidth; struct ieee80211_sub_if_data* sdata; } ;
struct TYPE_4__ {int width; } ;
struct TYPE_5__ {TYPE_1__ chandef; } ;
struct TYPE_6__ {TYPE_2__ bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_3__ vif; } ;
typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;
typedef enum ieee80211_sta_rx_bandwidth { ____Placeholder_ieee80211_sta_rx_bandwidth } ieee80211_sta_rx_bandwidth ;


 int WLAN_STA_TDLS_PEER ;
 int WLAN_STA_TDLS_WIDER_BW ;
 int ieee80211_chan_width_to_rx_bw (int) ;
 int ieee80211_sta_cap_rx_bw (struct sta_info*) ;
 int min (int,int ) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

enum ieee80211_sta_rx_bandwidth ieee80211_sta_cur_vht_bw(struct sta_info *sta)
{
 struct ieee80211_sub_if_data *sdata = sta->sdata;
 enum ieee80211_sta_rx_bandwidth bw;
 enum nl80211_chan_width bss_width = sdata->vif.bss_conf.chandef.width;

 bw = ieee80211_sta_cap_rx_bw(sta);
 bw = min(bw, sta->cur_max_bandwidth);






 if (test_sta_flag(sta, WLAN_STA_TDLS_PEER) &&
     test_sta_flag(sta, WLAN_STA_TDLS_WIDER_BW))
  return bw;

 bw = min(bw, ieee80211_chan_width_to_rx_bw(bss_width));

 return bw;
}
