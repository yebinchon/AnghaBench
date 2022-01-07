
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iw_freq {scalar_t__ e; int m; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int EINVAL ;
 int NL80211_BAND_2GHZ ;
 int NL80211_BAND_5GHZ ;
 int ieee80211_channel_to_frequency (int,int) ;

int cfg80211_wext_freq(struct iw_freq *freq)
{




 if (freq->e == 0) {
  enum nl80211_band band = NL80211_BAND_2GHZ;
  if (freq->m < 0)
   return 0;
  if (freq->m > 14)
   band = NL80211_BAND_5GHZ;
  return ieee80211_channel_to_frequency(freq->m, band);
 } else {
  int i, div = 1000000;
  for (i = 0; i < freq->e; i++)
   div /= 10;
  if (div <= 0)
   return -EINVAL;
  return freq->m / div;
 }
}
