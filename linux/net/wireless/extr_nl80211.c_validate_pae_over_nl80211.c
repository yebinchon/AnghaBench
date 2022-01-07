
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct genl_info {int * attrs; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int tx_control_port; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int GENL_SET_ERR_MSG (struct genl_info*,char*) ;
 size_t NL80211_ATTR_SOCKET_OWNER ;
 int NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211 ;
 int wiphy_ext_feature_isset (int *,int ) ;

__attribute__((used)) static int validate_pae_over_nl80211(struct cfg80211_registered_device *rdev,
         struct genl_info *info)
{
 if (!info->attrs[NL80211_ATTR_SOCKET_OWNER]) {
  GENL_SET_ERR_MSG(info, "SOCKET_OWNER not set");
  return -EINVAL;
 }

 if (!rdev->ops->tx_control_port ||
     !wiphy_ext_feature_isset(&rdev->wiphy,
         NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211))
  return -EOPNOTSUPP;

 return 0;
}
