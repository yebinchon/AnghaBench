
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {scalar_t__* bands; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int NUM_NL80211_BANDS ;
 int set_mandatory_flags_band (scalar_t__) ;

void ieee80211_set_bitrate_flags(struct wiphy *wiphy)
{
 enum nl80211_band band;

 for (band = 0; band < NUM_NL80211_BANDS; band++)
  if (wiphy->bands[band])
   set_mandatory_flags_band(wiphy->bands[band]);
}
