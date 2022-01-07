
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfg80211_chan_def {int width; scalar_t__ center_freq2; scalar_t__ center_freq1; } ;


 int IEEE80211_VHT_CHANWIDTH_160MHZ ;
 int IEEE80211_VHT_CHANWIDTH_80MHZ ;
 int IEEE80211_VHT_CHANWIDTH_80P80MHZ ;
 int IEEE80211_VHT_CHANWIDTH_USE_HT ;



 int WLAN_EID_WIDE_BW_CHANNEL_SWITCH ;
 void* ieee80211_frequency_to_channel (scalar_t__) ;

void ieee80211_ie_build_wide_bw_cs(u8 *pos,
       const struct cfg80211_chan_def *chandef)
{
 *pos++ = WLAN_EID_WIDE_BW_CHANNEL_SWITCH;
 *pos++ = 3;

 switch (chandef->width) {
 case 129:
  *pos++ = IEEE80211_VHT_CHANWIDTH_80MHZ;
  break;
 case 130:
  *pos++ = IEEE80211_VHT_CHANWIDTH_160MHZ;
  break;
 case 128:
  *pos++ = IEEE80211_VHT_CHANWIDTH_80P80MHZ;
  break;
 default:
  *pos++ = IEEE80211_VHT_CHANWIDTH_USE_HT;
 }


 *pos++ = ieee80211_frequency_to_channel(chandef->center_freq1);

 if (chandef->center_freq2)
  *pos++ = ieee80211_frequency_to_channel(chandef->center_freq2);
 else
  *pos++ = 0;
}
