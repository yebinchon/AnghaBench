
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int features; } ;
struct cfg80211_registered_device {TYPE_1__ wiphy; } ;
typedef enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;
typedef enum nl80211_auth_type { ____Placeholder_nl80211_auth_type } nl80211_auth_type ;


 int NL80211_AUTHTYPE_FILS_PK ;
 int NL80211_AUTHTYPE_FILS_SK ;
 int NL80211_AUTHTYPE_FILS_SK_PFS ;
 int NL80211_AUTHTYPE_MAX ;
 int NL80211_AUTHTYPE_SAE ;



 int NL80211_EXT_FEATURE_FILS_SK_OFFLOAD ;
 int NL80211_EXT_FEATURE_FILS_STA ;
 int NL80211_EXT_FEATURE_SAE_OFFLOAD ;
 int NL80211_FEATURE_SAE ;
 int wiphy_ext_feature_isset (TYPE_1__*,int ) ;

__attribute__((used)) static bool nl80211_valid_auth_type(struct cfg80211_registered_device *rdev,
        enum nl80211_auth_type auth_type,
        enum nl80211_commands cmd)
{
 if (auth_type > NL80211_AUTHTYPE_MAX)
  return 0;

 switch (cmd) {
 case 130:
  if (!(rdev->wiphy.features & NL80211_FEATURE_SAE) &&
      auth_type == NL80211_AUTHTYPE_SAE)
   return 0;
  if (!wiphy_ext_feature_isset(&rdev->wiphy,
          NL80211_EXT_FEATURE_FILS_STA) &&
      (auth_type == NL80211_AUTHTYPE_FILS_SK ||
       auth_type == NL80211_AUTHTYPE_FILS_SK_PFS ||
       auth_type == NL80211_AUTHTYPE_FILS_PK))
   return 0;
  return 1;
 case 129:
  if (!(rdev->wiphy.features & NL80211_FEATURE_SAE) &&
      !wiphy_ext_feature_isset(&rdev->wiphy,
          NL80211_EXT_FEATURE_SAE_OFFLOAD) &&
      auth_type == NL80211_AUTHTYPE_SAE)
   return 0;


  if (auth_type == NL80211_AUTHTYPE_FILS_SK_PFS ||
      auth_type == NL80211_AUTHTYPE_FILS_PK)
   return 0;
  if (!wiphy_ext_feature_isset(
       &rdev->wiphy,
       NL80211_EXT_FEATURE_FILS_SK_OFFLOAD) &&
      auth_type == NL80211_AUTHTYPE_FILS_SK)
   return 0;
  return 1;
 case 128:

  if (auth_type == NL80211_AUTHTYPE_SAE)
   return 0;

  if (auth_type == NL80211_AUTHTYPE_FILS_SK ||
      auth_type == NL80211_AUTHTYPE_FILS_SK_PFS ||
      auth_type == NL80211_AUTHTYPE_FILS_PK)
   return 0;
  return 1;
 default:
  return 0;
 }
}
