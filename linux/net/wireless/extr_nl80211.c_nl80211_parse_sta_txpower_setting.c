
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int power; int type; } ;
struct station_parameters {int sta_modify_mask; TYPE_2__ txpwr; } ;
struct genl_info {scalar_t__* attrs; struct cfg80211_registered_device** user_ptr; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_3__ {int set_tx_power; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int NL80211_ATTR_STA_TX_POWER ;
 size_t NL80211_ATTR_STA_TX_POWER_SETTING ;
 int NL80211_EXT_FEATURE_STA_TX_PWR ;
 int NL80211_TX_POWER_LIMITED ;
 int STATION_PARAM_APPLY_STA_TXPOWER ;
 int nla_get_s16 (scalar_t__) ;
 int nla_get_u8 (scalar_t__) ;
 int wiphy_ext_feature_isset (int *,int ) ;

__attribute__((used)) static int nl80211_parse_sta_txpower_setting(struct genl_info *info,
          struct station_parameters *params)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 int idx;

 if (info->attrs[NL80211_ATTR_STA_TX_POWER_SETTING]) {
  if (!rdev->ops->set_tx_power ||
      !wiphy_ext_feature_isset(&rdev->wiphy,
      NL80211_EXT_FEATURE_STA_TX_PWR))
   return -EOPNOTSUPP;

  idx = NL80211_ATTR_STA_TX_POWER_SETTING;
  params->txpwr.type = nla_get_u8(info->attrs[idx]);

  if (params->txpwr.type == NL80211_TX_POWER_LIMITED) {
   idx = NL80211_ATTR_STA_TX_POWER;

   if (info->attrs[idx])
    params->txpwr.power =
     nla_get_s16(info->attrs[idx]);
   else
    return -EINVAL;
  }
  params->sta_modify_mask |= STATION_PARAM_APPLY_STA_TXPOWER;
 }

 return 0;
}
