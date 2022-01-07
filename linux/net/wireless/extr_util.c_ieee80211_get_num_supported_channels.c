
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {TYPE_1__** bands; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {scalar_t__ n_channels; } ;


 int NUM_NL80211_BANDS ;

unsigned int ieee80211_get_num_supported_channels(struct wiphy *wiphy)
{
 enum nl80211_band band;
 unsigned int n_channels = 0;

 for (band = 0; band < NUM_NL80211_BANDS; band++)
  if (wiphy->bands[band])
   n_channels += wiphy->bands[band]->n_channels;

 return n_channels;
}
