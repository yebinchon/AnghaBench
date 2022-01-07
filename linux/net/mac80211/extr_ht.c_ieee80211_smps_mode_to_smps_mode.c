
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_smps_mode { ____Placeholder_nl80211_smps_mode } nl80211_smps_mode ;
typedef enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;





 int NL80211_SMPS_DYNAMIC ;
 int NL80211_SMPS_OFF ;
 int NL80211_SMPS_STATIC ;

enum nl80211_smps_mode
ieee80211_smps_mode_to_smps_mode(enum ieee80211_smps_mode smps)
{
 switch (smps) {
 case 129:
  return NL80211_SMPS_OFF;
 case 128:
  return NL80211_SMPS_STATIC;
 case 130:
  return NL80211_SMPS_DYNAMIC;
 default:
  return NL80211_SMPS_OFF;
 }
}
