
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ieee80211_vht_operation {int center_freq_seg0_idx; int center_freq_seg1_idx; int basic_mcs_set; void* chan_width; } ;
struct ieee80211_sta_vht_cap {int dummy; } ;
struct cfg80211_chan_def {int width; scalar_t__ center_freq1; TYPE_1__* chan; scalar_t__ center_freq2; } ;
struct TYPE_2__ {scalar_t__ center_freq; } ;


 void* IEEE80211_VHT_CHANWIDTH_80MHZ ;
 void* IEEE80211_VHT_CHANWIDTH_USE_HT ;



 int WLAN_EID_VHT_OPERATION ;
 int cpu_to_le16 (int) ;
 void* ieee80211_frequency_to_channel (scalar_t__) ;

u8 *ieee80211_ie_build_vht_oper(u8 *pos, struct ieee80211_sta_vht_cap *vht_cap,
    const struct cfg80211_chan_def *chandef)
{
 struct ieee80211_vht_operation *vht_oper;

 *pos++ = WLAN_EID_VHT_OPERATION;
 *pos++ = sizeof(struct ieee80211_vht_operation);
 vht_oper = (struct ieee80211_vht_operation *)pos;
 vht_oper->center_freq_seg0_idx = ieee80211_frequency_to_channel(
       chandef->center_freq1);
 if (chandef->center_freq2)
  vht_oper->center_freq_seg1_idx =
   ieee80211_frequency_to_channel(chandef->center_freq2);
 else
  vht_oper->center_freq_seg1_idx = 0x00;

 switch (chandef->width) {
 case 130:




  vht_oper->chan_width = IEEE80211_VHT_CHANWIDTH_80MHZ;
  vht_oper->center_freq_seg1_idx = vht_oper->center_freq_seg0_idx;
  if (chandef->chan->center_freq < chandef->center_freq1)
   vht_oper->center_freq_seg0_idx -= 8;
  else
   vht_oper->center_freq_seg0_idx += 8;
  break;
 case 128:




  vht_oper->chan_width = IEEE80211_VHT_CHANWIDTH_80MHZ;
  break;
 case 129:
  vht_oper->chan_width = IEEE80211_VHT_CHANWIDTH_80MHZ;
  break;
 default:
  vht_oper->chan_width = IEEE80211_VHT_CHANWIDTH_USE_HT;
  break;
 }


 vht_oper->basic_mcs_set = cpu_to_le16(0xffff);

 return pos + sizeof(struct ieee80211_vht_operation);
}
