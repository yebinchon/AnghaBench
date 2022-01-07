
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ieee80211_supported_band {scalar_t__ band; } ;
struct ieee80211_sub_if_data {int dummy; } ;


 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ WLAN_CAPABILITY_SHORT_PREAMBLE ;
 scalar_t__ WLAN_CAPABILITY_SHORT_SLOT_TIME ;
 struct ieee80211_supported_band* ieee80211_get_sband (struct ieee80211_sub_if_data*) ;

__attribute__((used)) static u16 ieee80211_get_tdls_sta_capab(struct ieee80211_sub_if_data *sdata,
     u16 status_code)
{
 struct ieee80211_supported_band *sband;


 if (status_code != 0)
  return 0;

 sband = ieee80211_get_sband(sdata);
 if (sband && sband->band == NL80211_BAND_2GHZ) {
  return WLAN_CAPABILITY_SHORT_SLOT_TIME |
         WLAN_CAPABILITY_SHORT_PREAMBLE;
 }

 return 0;
}
