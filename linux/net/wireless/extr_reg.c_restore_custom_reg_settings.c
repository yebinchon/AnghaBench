
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {int n_channels; struct ieee80211_channel* channels; } ;
struct ieee80211_channel {int beacon_found; int orig_mpwr; int max_power; int orig_mag; int max_antenna_gain; int orig_flags; int flags; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int NUM_NL80211_BANDS ;

__attribute__((used)) static void restore_custom_reg_settings(struct wiphy *wiphy)
{
 struct ieee80211_supported_band *sband;
 enum nl80211_band band;
 struct ieee80211_channel *chan;
 int i;

 for (band = 0; band < NUM_NL80211_BANDS; band++) {
  sband = wiphy->bands[band];
  if (!sband)
   continue;
  for (i = 0; i < sband->n_channels; i++) {
   chan = &sband->channels[i];
   chan->flags = chan->orig_flags;
   chan->max_antenna_gain = chan->orig_mag;
   chan->max_power = chan->orig_mpwr;
   chan->beacon_found = 0;
  }
 }
}
