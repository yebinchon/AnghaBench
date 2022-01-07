
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct key_params {int cipher; int seq_len; scalar_t__ seq; int key_len; int mode; } ;
struct TYPE_3__ {int flags; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;


 int EINVAL ;
 int NL80211_EXT_FEATURE_EXT_KEY_ID ;
 int NL80211_KEY_NO_TX ;
 int NL80211_KEY_RX_TX ;
 int NL80211_KEY_SET_TX ;
 int WIPHY_FLAG_IBSS_RSN ;
 int WLAN_KEY_LEN_AES_CMAC ;
 int WLAN_KEY_LEN_BIP_CMAC_256 ;
 int WLAN_KEY_LEN_BIP_GMAC_128 ;
 int WLAN_KEY_LEN_BIP_GMAC_256 ;
 int WLAN_KEY_LEN_CCMP ;
 int WLAN_KEY_LEN_CCMP_256 ;
 int WLAN_KEY_LEN_GCMP ;
 int WLAN_KEY_LEN_GCMP_256 ;
 int WLAN_KEY_LEN_TKIP ;
 int WLAN_KEY_LEN_WEP104 ;
 int WLAN_KEY_LEN_WEP40 ;
 int cfg80211_supported_cipher_suite (TYPE_1__*,int) ;
 int wiphy_ext_feature_isset (TYPE_1__*,int ) ;

int cfg80211_validate_key_settings(struct cfg80211_registered_device *rdev,
       struct key_params *params, int key_idx,
       bool pairwise, const u8 *mac_addr)
{
 if (key_idx < 0 || key_idx > 5)
  return -EINVAL;

 if (!pairwise && mac_addr && !(rdev->wiphy.flags & WIPHY_FLAG_IBSS_RSN))
  return -EINVAL;

 if (pairwise && !mac_addr)
  return -EINVAL;

 switch (params->cipher) {
 case 130:

  if ((pairwise && key_idx) ||
      params->mode != NL80211_KEY_RX_TX)
   return -EINVAL;
  break;
 case 134:
 case 133:
 case 132:
 case 131:







  if ((params->mode == NL80211_KEY_NO_TX && !pairwise) ||
      params->mode == NL80211_KEY_SET_TX)
   return -EINVAL;
  if (wiphy_ext_feature_isset(&rdev->wiphy,
         NL80211_EXT_FEATURE_EXT_KEY_ID)) {
   if (pairwise && (key_idx < 0 || key_idx > 1))
    return -EINVAL;
  } else if (pairwise && key_idx) {
   return -EINVAL;
  }
  break;
 case 138:
 case 137:
 case 136:
 case 135:

  if (pairwise)
   return -EINVAL;
  if (key_idx < 4)
   return -EINVAL;
  break;
 case 128:
 case 129:
  if (key_idx > 3)
   return -EINVAL;
 default:
  break;
 }

 switch (params->cipher) {
 case 128:
  if (params->key_len != WLAN_KEY_LEN_WEP40)
   return -EINVAL;
  break;
 case 130:
  if (params->key_len != WLAN_KEY_LEN_TKIP)
   return -EINVAL;
  break;
 case 134:
  if (params->key_len != WLAN_KEY_LEN_CCMP)
   return -EINVAL;
  break;
 case 133:
  if (params->key_len != WLAN_KEY_LEN_CCMP_256)
   return -EINVAL;
  break;
 case 132:
  if (params->key_len != WLAN_KEY_LEN_GCMP)
   return -EINVAL;
  break;
 case 131:
  if (params->key_len != WLAN_KEY_LEN_GCMP_256)
   return -EINVAL;
  break;
 case 129:
  if (params->key_len != WLAN_KEY_LEN_WEP104)
   return -EINVAL;
  break;
 case 138:
  if (params->key_len != WLAN_KEY_LEN_AES_CMAC)
   return -EINVAL;
  break;
 case 137:
  if (params->key_len != WLAN_KEY_LEN_BIP_CMAC_256)
   return -EINVAL;
  break;
 case 136:
  if (params->key_len != WLAN_KEY_LEN_BIP_GMAC_128)
   return -EINVAL;
  break;
 case 135:
  if (params->key_len != WLAN_KEY_LEN_BIP_GMAC_256)
   return -EINVAL;
  break;
 default:







  break;
 }

 if (params->seq) {
  switch (params->cipher) {
  case 128:
  case 129:

   return -EINVAL;
  case 130:
  case 134:
  case 133:
  case 132:
  case 131:
  case 138:
  case 137:
  case 136:
  case 135:
   if (params->seq_len != 6)
    return -EINVAL;
   break;
  }
 }

 if (!cfg80211_supported_cipher_suite(&rdev->wiphy, params->cipher))
  return -EINVAL;

 return 0;
}
