
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct station_parameters {int listen_interval; int support_p2p_ps; int opmode_notif_used; scalar_t__ vlan; void* airtime_weight; void* opmode_notif; int local_pm; int sta_modify_mask; void* peer_aid; void* plink_state; void* plink_action; void* ext_capab_len; void* ext_capab; void* capability; void* supported_rates_len; void* supported_rates; void* aid; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; int wiphy; TYPE_1__* ops; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ieee80211_ptr; int wiphy; TYPE_1__* ops; } ;
typedef int params ;
struct TYPE_4__ {int iftype; } ;
struct TYPE_3__ {int change_station; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (scalar_t__) ;
 size_t NL80211_ATTR_AIRTIME_WEIGHT ;
 size_t NL80211_ATTR_LOCAL_MESH_POWER_MODE ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_MESH_PEER_AID ;
 size_t NL80211_ATTR_OPMODE_NOTIF ;
 size_t NL80211_ATTR_STA_AID ;
 size_t NL80211_ATTR_STA_CAPABILITY ;
 size_t NL80211_ATTR_STA_EXT_CAPABILITY ;
 size_t NL80211_ATTR_STA_LISTEN_INTERVAL ;
 size_t NL80211_ATTR_STA_PLINK_ACTION ;
 size_t NL80211_ATTR_STA_PLINK_STATE ;
 size_t NL80211_ATTR_STA_SUPPORTED_RATES ;
 size_t NL80211_ATTR_STA_SUPPORT_P2P_PS ;
 int NL80211_EXT_FEATURE_AIRTIME_FAIRNESS ;







 int PTR_ERR (scalar_t__) ;
 int STATION_PARAM_APPLY_CAPABILITY ;
 int STATION_PARAM_APPLY_PLINK_STATE ;
 int dev_put (scalar_t__) ;
 scalar_t__ get_vlan (struct genl_info*,struct net_device*) ;
 int memset (struct station_parameters*,int ,int) ;
 int nl80211_parse_sta_txpower_setting (struct genl_info*,struct station_parameters*) ;
 int nl80211_set_station_tdls (struct genl_info*,struct station_parameters*) ;
 void* nla_data (scalar_t__) ;
 void* nla_get_u16 (scalar_t__) ;
 int nla_get_u32 (scalar_t__) ;
 void* nla_get_u8 (scalar_t__) ;
 void* nla_len (scalar_t__) ;
 scalar_t__ parse_station_flags (struct genl_info*,int,struct station_parameters*) ;
 int rdev_change_station (struct net_device*,struct net_device*,int *,struct station_parameters*) ;
 int wiphy_ext_feature_isset (int *,int ) ;

__attribute__((used)) static int nl80211_set_station(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct station_parameters params;
 u8 *mac_addr;
 int err;

 memset(&params, 0, sizeof(params));

 if (!rdev->ops->change_station)
  return -EOPNOTSUPP;






 if (info->attrs[NL80211_ATTR_STA_AID])
  params.aid = nla_get_u16(info->attrs[NL80211_ATTR_STA_AID]);

 if (info->attrs[NL80211_ATTR_STA_LISTEN_INTERVAL])
  params.listen_interval =
       nla_get_u16(info->attrs[NL80211_ATTR_STA_LISTEN_INTERVAL]);
 else
  params.listen_interval = -1;

 if (info->attrs[NL80211_ATTR_STA_SUPPORT_P2P_PS])
  params.support_p2p_ps =
   nla_get_u8(info->attrs[NL80211_ATTR_STA_SUPPORT_P2P_PS]);
 else
  params.support_p2p_ps = -1;

 if (!info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 mac_addr = nla_data(info->attrs[NL80211_ATTR_MAC]);

 if (info->attrs[NL80211_ATTR_STA_SUPPORTED_RATES]) {
  params.supported_rates =
   nla_data(info->attrs[NL80211_ATTR_STA_SUPPORTED_RATES]);
  params.supported_rates_len =
   nla_len(info->attrs[NL80211_ATTR_STA_SUPPORTED_RATES]);
 }

 if (info->attrs[NL80211_ATTR_STA_CAPABILITY]) {
  params.capability =
   nla_get_u16(info->attrs[NL80211_ATTR_STA_CAPABILITY]);
  params.sta_modify_mask |= STATION_PARAM_APPLY_CAPABILITY;
 }

 if (info->attrs[NL80211_ATTR_STA_EXT_CAPABILITY]) {
  params.ext_capab =
   nla_data(info->attrs[NL80211_ATTR_STA_EXT_CAPABILITY]);
  params.ext_capab_len =
   nla_len(info->attrs[NL80211_ATTR_STA_EXT_CAPABILITY]);
 }

 if (parse_station_flags(info, dev->ieee80211_ptr->iftype, &params))
  return -EINVAL;

 if (info->attrs[NL80211_ATTR_STA_PLINK_ACTION])
  params.plink_action =
   nla_get_u8(info->attrs[NL80211_ATTR_STA_PLINK_ACTION]);

 if (info->attrs[NL80211_ATTR_STA_PLINK_STATE]) {
  params.plink_state =
   nla_get_u8(info->attrs[NL80211_ATTR_STA_PLINK_STATE]);
  if (info->attrs[NL80211_ATTR_MESH_PEER_AID])
   params.peer_aid = nla_get_u16(
    info->attrs[NL80211_ATTR_MESH_PEER_AID]);
  params.sta_modify_mask |= STATION_PARAM_APPLY_PLINK_STATE;
 }

 if (info->attrs[NL80211_ATTR_LOCAL_MESH_POWER_MODE])
  params.local_pm = nla_get_u32(
   info->attrs[NL80211_ATTR_LOCAL_MESH_POWER_MODE]);

 if (info->attrs[NL80211_ATTR_OPMODE_NOTIF]) {
  params.opmode_notif_used = 1;
  params.opmode_notif =
   nla_get_u8(info->attrs[NL80211_ATTR_OPMODE_NOTIF]);
 }

 if (info->attrs[NL80211_ATTR_AIRTIME_WEIGHT])
  params.airtime_weight =
   nla_get_u16(info->attrs[NL80211_ATTR_AIRTIME_WEIGHT]);

 if (params.airtime_weight &&
     !wiphy_ext_feature_isset(&rdev->wiphy,
         NL80211_EXT_FEATURE_AIRTIME_FAIRNESS))
  return -EOPNOTSUPP;

 err = nl80211_parse_sta_txpower_setting(info, &params);
 if (err)
  return err;


 err = nl80211_set_station_tdls(info, &params);
 if (err)
  return err;

 params.vlan = get_vlan(info, rdev);
 if (IS_ERR(params.vlan))
  return PTR_ERR(params.vlan);

 switch (dev->ieee80211_ptr->iftype) {
 case 133:
 case 132:
 case 129:
 case 130:
 case 128:
 case 134:
 case 131:
  break;
 default:
  err = -EOPNOTSUPP;
  goto out_put_vlan;
 }


 err = rdev_change_station(rdev, dev, mac_addr, &params);

 out_put_vlan:
 if (params.vlan)
  dev_put(params.vlan);

 return err;
}
