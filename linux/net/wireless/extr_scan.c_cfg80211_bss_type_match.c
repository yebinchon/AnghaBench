
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
typedef enum ieee80211_bss_type { ____Placeholder_ieee80211_bss_type } ieee80211_bss_type ;


 int IEEE80211_BSS_TYPE_ANY ;




 int NL80211_BAND_60GHZ ;
 int WLAN_CAPABILITY_DMG_TYPE_AP ;
 int WLAN_CAPABILITY_DMG_TYPE_IBSS ;
 int WLAN_CAPABILITY_DMG_TYPE_MASK ;
 int WLAN_CAPABILITY_DMG_TYPE_PBSS ;
 int WLAN_CAPABILITY_ESS ;
 int WLAN_CAPABILITY_IBSS ;

__attribute__((used)) static bool cfg80211_bss_type_match(u16 capability,
        enum nl80211_band band,
        enum ieee80211_bss_type bss_type)
{
 bool ret = 1;
 u16 mask, val;

 if (bss_type == IEEE80211_BSS_TYPE_ANY)
  return ret;

 if (band == NL80211_BAND_60GHZ) {
  mask = WLAN_CAPABILITY_DMG_TYPE_MASK;
  switch (bss_type) {
  case 131:
   val = WLAN_CAPABILITY_DMG_TYPE_AP;
   break;
  case 128:
   val = WLAN_CAPABILITY_DMG_TYPE_PBSS;
   break;
  case 130:
   val = WLAN_CAPABILITY_DMG_TYPE_IBSS;
   break;
  default:
   return 0;
  }
 } else {
  mask = WLAN_CAPABILITY_ESS | WLAN_CAPABILITY_IBSS;
  switch (bss_type) {
  case 131:
   val = WLAN_CAPABILITY_ESS;
   break;
  case 130:
   val = WLAN_CAPABILITY_IBSS;
   break;
  case 129:
   val = 0;
   break;
  default:
   return 0;
  }
 }

 ret = ((capability & mask) == val);
 return ret;
}
