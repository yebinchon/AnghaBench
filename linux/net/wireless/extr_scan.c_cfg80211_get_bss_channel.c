
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wiphy {int dummy; } ;
struct ieee80211_ht_operation {int primary_chan; } ;
struct ieee80211_channel {int flags; int band; } ;
typedef enum nl80211_bss_scan_width { ____Placeholder_nl80211_bss_scan_width } nl80211_bss_scan_width ;


 int IEEE80211_CHAN_DISABLED ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BSS_CHAN_WIDTH_10 ;
 int NL80211_BSS_CHAN_WIDTH_5 ;
 int WLAN_EID_DS_PARAMS ;
 int WLAN_EID_HT_OPERATION ;
 int* cfg80211_find_ie (int ,int const*,size_t) ;
 int ieee80211_channel_to_frequency (int,int ) ;
 struct ieee80211_channel* ieee80211_get_channel (struct wiphy*,int ) ;

__attribute__((used)) static struct ieee80211_channel *
cfg80211_get_bss_channel(struct wiphy *wiphy, const u8 *ie, size_t ielen,
    struct ieee80211_channel *channel,
    enum nl80211_bss_scan_width scan_width)
{
 const u8 *tmp;
 u32 freq;
 int channel_number = -1;
 struct ieee80211_channel *alt_channel;

 tmp = cfg80211_find_ie(WLAN_EID_DS_PARAMS, ie, ielen);
 if (tmp && tmp[1] == 1) {
  channel_number = tmp[2];
 } else {
  tmp = cfg80211_find_ie(WLAN_EID_HT_OPERATION, ie, ielen);
  if (tmp && tmp[1] >= sizeof(struct ieee80211_ht_operation)) {
   struct ieee80211_ht_operation *htop = (void *)(tmp + 2);

   channel_number = htop->primary_chan;
  }
 }

 if (channel_number < 0) {

  return channel;
 }

 freq = ieee80211_channel_to_frequency(channel_number, channel->band);
 alt_channel = ieee80211_get_channel(wiphy, freq);
 if (!alt_channel) {
  if (channel->band == NL80211_BAND_2GHZ) {






   return ((void*)0);
  }


  return channel;
 }

 if (scan_width == NL80211_BSS_CHAN_WIDTH_10 ||
     scan_width == NL80211_BSS_CHAN_WIDTH_5) {





  return channel;
 }





 if (alt_channel->flags & IEEE80211_CHAN_DISABLED)
  return ((void*)0);
 return alt_channel;
}
