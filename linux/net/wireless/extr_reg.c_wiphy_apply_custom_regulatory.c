
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regulatory_flags; int * bands; } ;
struct ieee80211_regdomain {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int NUM_NL80211_BANDS ;
 int REGULATORY_CUSTOM_REG ;
 int WARN (int,char*) ;
 int WARN_ON (int) ;
 int handle_band_custom (struct wiphy*,int ,struct ieee80211_regdomain const*) ;

void wiphy_apply_custom_regulatory(struct wiphy *wiphy,
       const struct ieee80211_regdomain *regd)
{
 enum nl80211_band band;
 unsigned int bands_set = 0;

 WARN(!(wiphy->regulatory_flags & REGULATORY_CUSTOM_REG),
      "wiphy should have REGULATORY_CUSTOM_REG\n");
 wiphy->regulatory_flags |= REGULATORY_CUSTOM_REG;

 for (band = 0; band < NUM_NL80211_BANDS; band++) {
  if (!wiphy->bands[band])
   continue;
  handle_band_custom(wiphy, wiphy->bands[band], regd);
  bands_set++;
 }





 WARN_ON(!bands_set);
}
