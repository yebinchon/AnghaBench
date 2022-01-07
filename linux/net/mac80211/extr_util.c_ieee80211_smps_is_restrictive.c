
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ieee80211_smps_mode { ____Placeholder_ieee80211_smps_mode } ieee80211_smps_mode ;


 int IEEE80211_SMPS_AUTOMATIC ;



 int WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;

bool ieee80211_smps_is_restrictive(enum ieee80211_smps_mode smps_mode_old,
       enum ieee80211_smps_mode smps_mode_new)
{
 if (WARN_ON_ONCE(smps_mode_old == IEEE80211_SMPS_AUTOMATIC ||
    smps_mode_new == IEEE80211_SMPS_AUTOMATIC))
  return 0;

 switch (smps_mode_old) {
 case 128:
  return 0;
 case 130:
  return smps_mode_new == 128;
 case 129:
  return smps_mode_new != 129;
 default:
  WARN_ON(1);
 }

 return 0;
}
