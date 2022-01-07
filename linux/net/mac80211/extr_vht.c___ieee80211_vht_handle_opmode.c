
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sta_opmode_info {int rx_nss; int changed; int bw; } ;
struct TYPE_2__ {int rx_nss; int bandwidth; } ;
struct sta_info {int addr; TYPE_1__ sta; int cur_max_bandwidth; } ;
struct ieee80211_sub_if_data {int dev; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
typedef enum ieee80211_sta_rx_bandwidth { ____Placeholder_ieee80211_sta_rx_bandwidth } ieee80211_sta_rx_bandwidth ;


 int GFP_KERNEL ;




 int IEEE80211_OPMODE_NOTIF_CHANWIDTH_MASK ;
 int IEEE80211_OPMODE_NOTIF_RX_NSS_MASK ;
 int IEEE80211_OPMODE_NOTIF_RX_NSS_SHIFT ;
 int IEEE80211_OPMODE_NOTIF_RX_NSS_TYPE_BF ;
 int IEEE80211_RC_BW_CHANGED ;
 int IEEE80211_RC_NSS_CHANGED ;
 int IEEE80211_STA_RX_BW_160 ;
 int IEEE80211_STA_RX_BW_20 ;
 int IEEE80211_STA_RX_BW_40 ;
 int IEEE80211_STA_RX_BW_80 ;
 int STA_OPMODE_MAX_BW_CHANGED ;
 int STA_OPMODE_N_SS_CHANGED ;
 int cfg80211_sta_opmode_change_notify (int ,int ,struct sta_opmode_info*,int ) ;
 int ieee80211_sta_cur_vht_bw (struct sta_info*) ;
 int ieee80211_sta_rx_bw_to_chan_width (struct sta_info*) ;

u32 __ieee80211_vht_handle_opmode(struct ieee80211_sub_if_data *sdata,
      struct sta_info *sta, u8 opmode,
      enum nl80211_band band)
{
 enum ieee80211_sta_rx_bandwidth new_bw;
 struct sta_opmode_info sta_opmode = {};
 u32 changed = 0;
 u8 nss;


 if (opmode & IEEE80211_OPMODE_NOTIF_RX_NSS_TYPE_BF)
  return 0;

 nss = opmode & IEEE80211_OPMODE_NOTIF_RX_NSS_MASK;
 nss >>= IEEE80211_OPMODE_NOTIF_RX_NSS_SHIFT;
 nss += 1;

 if (sta->sta.rx_nss != nss) {
  sta->sta.rx_nss = nss;
  sta_opmode.rx_nss = nss;
  changed |= IEEE80211_RC_NSS_CHANGED;
  sta_opmode.changed |= STA_OPMODE_N_SS_CHANGED;
 }

 switch (opmode & IEEE80211_OPMODE_NOTIF_CHANWIDTH_MASK) {
 case 130:
  sta->cur_max_bandwidth = IEEE80211_STA_RX_BW_20;
  break;
 case 129:
  sta->cur_max_bandwidth = IEEE80211_STA_RX_BW_40;
  break;
 case 128:
  sta->cur_max_bandwidth = IEEE80211_STA_RX_BW_80;
  break;
 case 131:
  sta->cur_max_bandwidth = IEEE80211_STA_RX_BW_160;
  break;
 }

 new_bw = ieee80211_sta_cur_vht_bw(sta);
 if (new_bw != sta->sta.bandwidth) {
  sta->sta.bandwidth = new_bw;
  sta_opmode.bw = ieee80211_sta_rx_bw_to_chan_width(sta);
  changed |= IEEE80211_RC_BW_CHANGED;
  sta_opmode.changed |= STA_OPMODE_MAX_BW_CHANGED;
 }

 if (sta_opmode.changed)
  cfg80211_sta_opmode_change_notify(sdata->dev, sta->addr,
        &sta_opmode, GFP_KERNEL);

 return changed;
}
