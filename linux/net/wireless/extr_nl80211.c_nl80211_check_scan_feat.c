
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wiphy {int dummy; } ;
typedef enum nl80211_ext_feature_index { ____Placeholder_nl80211_ext_feature_index } nl80211_ext_feature_index ;


 scalar_t__ wiphy_ext_feature_isset (struct wiphy*,int) ;

__attribute__((used)) static bool nl80211_check_scan_feat(struct wiphy *wiphy, u32 flags, u32 flag,
        enum nl80211_ext_feature_index feat)
{
 if (!(flags & flag))
  return 1;
 if (wiphy_ext_feature_isset(wiphy, feat))
  return 1;
 return 0;
}
