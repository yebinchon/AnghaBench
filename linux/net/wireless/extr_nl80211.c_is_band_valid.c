
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {scalar_t__* bands; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 int NUM_NL80211_BANDS ;

__attribute__((used)) static bool is_band_valid(struct wiphy *wiphy, enum nl80211_band b)
{
 return b < NUM_NL80211_BANDS && wiphy->bands[b];
}
