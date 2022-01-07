
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {struct ieee80211_supported_band** bands; } ;
struct TYPE_2__ {size_t band; } ;
struct reg_beacon {TYPE_1__ chan; } ;
struct ieee80211_supported_band {unsigned int n_channels; } ;


 int handle_reg_beacon (struct wiphy*,unsigned int,struct reg_beacon*) ;

__attribute__((used)) static void wiphy_update_new_beacon(struct wiphy *wiphy,
        struct reg_beacon *reg_beacon)
{
 unsigned int i;
 struct ieee80211_supported_band *sband;

 if (!wiphy->bands[reg_beacon->chan.band])
  return;

 sband = wiphy->bands[reg_beacon->chan.band];

 for (i = 0; i < sband->n_channels; i++)
  handle_reg_beacon(wiphy, i, reg_beacon);
}
