
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int NL80211_BAND_2GHZ ;
 scalar_t__ ieee80211_channel_to_frequency (int,int ) ;

__attribute__((used)) static bool freq_is_chan_12_13_14(u32 freq)
{
 if (freq == ieee80211_channel_to_frequency(12, NL80211_BAND_2GHZ) ||
     freq == ieee80211_channel_to_frequency(13, NL80211_BAND_2GHZ) ||
     freq == ieee80211_channel_to_frequency(14, NL80211_BAND_2GHZ))
  return 1;
 return 0;
}
