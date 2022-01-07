
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct cfg80211_registered_device {int wiphy; } ;
struct cfg80211_bitrate_mask {TYPE_1__* control; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_2__ {size_t legacy; scalar_t__* vht_mcs; scalar_t__* ht_mcs; } ;


 int EINVAL ;
 size_t IEEE80211_HT_MCS_MASK_LEN ;
 int NL80211_EXT_FEATURE_BEACON_RATE_HT ;
 int NL80211_EXT_FEATURE_BEACON_RATE_LEGACY ;
 int NL80211_EXT_FEATURE_BEACON_RATE_VHT ;
 size_t NL80211_VHT_NSS_MAX ;
 int hweight16 (scalar_t__) ;
 int hweight32 (size_t) ;
 int hweight8 (scalar_t__) ;
 int wiphy_ext_feature_isset (int *,int ) ;

__attribute__((used)) static int validate_beacon_tx_rate(struct cfg80211_registered_device *rdev,
       enum nl80211_band band,
       struct cfg80211_bitrate_mask *beacon_rate)
{
 u32 count_ht, count_vht, i;
 u32 rate = beacon_rate->control[band].legacy;


 if (hweight32(rate) > 1)
  return -EINVAL;

 count_ht = 0;
 for (i = 0; i < IEEE80211_HT_MCS_MASK_LEN; i++) {
  if (hweight8(beacon_rate->control[band].ht_mcs[i]) > 1) {
   return -EINVAL;
  } else if (beacon_rate->control[band].ht_mcs[i]) {
   count_ht++;
   if (count_ht > 1)
    return -EINVAL;
  }
  if (count_ht && rate)
   return -EINVAL;
 }

 count_vht = 0;
 for (i = 0; i < NL80211_VHT_NSS_MAX; i++) {
  if (hweight16(beacon_rate->control[band].vht_mcs[i]) > 1) {
   return -EINVAL;
  } else if (beacon_rate->control[band].vht_mcs[i]) {
   count_vht++;
   if (count_vht > 1)
    return -EINVAL;
  }
  if (count_vht && rate)
   return -EINVAL;
 }

 if ((count_ht && count_vht) || (!rate && !count_ht && !count_vht))
  return -EINVAL;

 if (rate &&
     !wiphy_ext_feature_isset(&rdev->wiphy,
         NL80211_EXT_FEATURE_BEACON_RATE_LEGACY))
  return -EINVAL;
 if (count_ht &&
     !wiphy_ext_feature_isset(&rdev->wiphy,
         NL80211_EXT_FEATURE_BEACON_RATE_HT))
  return -EINVAL;
 if (count_vht &&
     !wiphy_ext_feature_isset(&rdev->wiphy,
         NL80211_EXT_FEATURE_BEACON_RATE_VHT))
  return -EINVAL;

 return 0;
}
