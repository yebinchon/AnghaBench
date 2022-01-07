
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int center_freq; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int NUM_NL80211_BANDS ;

struct ieee80211_channel *ieee80211_get_channel(struct wiphy *wiphy, int freq)
{
 enum nl80211_band band;
 struct ieee80211_supported_band *sband;
 int i;

 for (band = 0; band < NUM_NL80211_BANDS; band++) {
  sband = wiphy->bands[band];

  if (!sband)
   continue;

  for (i = 0; i < sband->n_channels; i++) {
   if (sband->channels[i].center_freq == freq)
    return &sband->channels[i];
  }
 }

 return ((void*)0);
}
