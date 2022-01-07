
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_10__ {TYPE_1__* chan; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ ssid_len; int conn_owner_nlportid; int ssid; TYPE_4__ chandef; void* beacon_interval; TYPE_4__ preset_chandef; } ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int features; int * bands; } ;
struct net_device {TYPE_3__ wiphy; struct wireless_dev* ieee80211_ptr; TYPE_2__* ops; } ;
struct genl_info {int snd_portid; scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_3__ wiphy; struct wireless_dev* ieee80211_ptr; TYPE_2__* ops; } ;
struct cfg80211_ap_settings {scalar_t__ ssid_len; int privacy; scalar_t__ p2p_ctwindow; int smps_mode; int acl; int ssid; TYPE_4__ chandef; void* beacon_interval; int flags; int he_obss_pd; void* twt_responder; void* pbss; int beacon_rate; void* p2p_opp_ps; int inactivity_timeout; int crypto; void* auth_type; void* hidden_ssid; void* dtim_period; int beacon; } ;
typedef int params ;
struct TYPE_8__ {int start_ap; } ;
struct TYPE_7__ {int band; } ;


 int AP_SETTINGS_EXTERNAL_AUTH_SUPPORT ;
 int EALREADY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IEEE80211_MAX_SSID_LEN ;
 scalar_t__ IS_ERR (int ) ;
 size_t NL80211_ATTR_ACL_POLICY ;
 size_t NL80211_ATTR_AUTH_TYPE ;
 size_t NL80211_ATTR_BEACON_HEAD ;
 size_t NL80211_ATTR_BEACON_INTERVAL ;
 size_t NL80211_ATTR_DTIM_PERIOD ;
 size_t NL80211_ATTR_EXTERNAL_AUTH_SUPPORT ;
 size_t NL80211_ATTR_HE_OBSS_PD ;
 size_t NL80211_ATTR_HIDDEN_SSID ;
 size_t NL80211_ATTR_INACTIVITY_TIMEOUT ;
 size_t NL80211_ATTR_P2P_CTWINDOW ;
 size_t NL80211_ATTR_P2P_OPPPS ;
 size_t NL80211_ATTR_PBSS ;
 size_t NL80211_ATTR_PRIVACY ;
 size_t NL80211_ATTR_SMPS_MODE ;
 size_t NL80211_ATTR_SOCKET_OWNER ;
 size_t NL80211_ATTR_SSID ;
 size_t NL80211_ATTR_TWT_RESPONDER ;
 size_t NL80211_ATTR_TX_RATES ;
 size_t NL80211_ATTR_WIPHY_FREQ ;
 void* NL80211_AUTHTYPE_AUTOMATIC ;
 size_t NL80211_BAND_60GHZ ;
 int NL80211_CMD_START_AP ;
 int NL80211_FEATURE_DYNAMIC_SMPS ;
 int NL80211_FEATURE_INACTIVITY_TIMER ;
 int NL80211_FEATURE_P2P_GO_CTWIN ;
 int NL80211_FEATURE_P2P_GO_OPPPS ;
 int NL80211_FEATURE_STATIC_SMPS ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;
 int NL80211_MAX_NR_CIPHER_SUITES ;



 int PTR_ERR (int ) ;
 int cfg80211_reg_can_beacon_relax (TYPE_3__*,TYPE_4__*,scalar_t__) ;
 int cfg80211_validate_beacon_int (struct net_device*,scalar_t__,void*) ;
 int kfree (int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (struct cfg80211_ap_settings*,int ,int) ;
 int nl80211_calculate_ap_params (struct cfg80211_ap_settings*) ;
 int nl80211_crypto_settings (struct net_device*,struct genl_info*,int *,int ) ;
 int nl80211_get_ap_channel (struct net_device*,struct cfg80211_ap_settings*) ;
 int nl80211_parse_beacon (struct net_device*,scalar_t__*,int *) ;
 int nl80211_parse_chandef (struct net_device*,struct genl_info*,TYPE_4__*) ;
 int nl80211_parse_he_obss_pd (scalar_t__,int *) ;
 int nl80211_parse_tx_bitrate_mask (struct genl_info*,int *) ;
 int nl80211_valid_auth_type (struct net_device*,void*,int ) ;
 int nla_data (scalar_t__) ;
 void* nla_get_flag (scalar_t__) ;
 int nla_get_u16 (scalar_t__) ;
 void* nla_get_u32 (scalar_t__) ;
 void* nla_get_u8 (scalar_t__) ;
 scalar_t__ nla_len (scalar_t__) ;
 int parse_acl_data (TYPE_3__*,struct genl_info*) ;
 int rdev_start_ap (struct net_device*,struct net_device*,struct cfg80211_ap_settings*) ;
 int validate_beacon_tx_rate (struct net_device*,int ,int *) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

__attribute__((used)) static int nl80211_start_ap(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_ap_settings params;
 int err;

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_AP &&
     dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
  return -EOPNOTSUPP;

 if (!rdev->ops->start_ap)
  return -EOPNOTSUPP;

 if (wdev->beacon_interval)
  return -EALREADY;

 memset(&params, 0, sizeof(params));


 if (!info->attrs[NL80211_ATTR_BEACON_INTERVAL] ||
     !info->attrs[NL80211_ATTR_DTIM_PERIOD] ||
     !info->attrs[NL80211_ATTR_BEACON_HEAD])
  return -EINVAL;

 err = nl80211_parse_beacon(rdev, info->attrs, &params.beacon);
 if (err)
  return err;

 params.beacon_interval =
  nla_get_u32(info->attrs[NL80211_ATTR_BEACON_INTERVAL]);
 params.dtim_period =
  nla_get_u32(info->attrs[NL80211_ATTR_DTIM_PERIOD]);

 err = cfg80211_validate_beacon_int(rdev, dev->ieee80211_ptr->iftype,
        params.beacon_interval);
 if (err)
  return err;
 if (info->attrs[NL80211_ATTR_SSID]) {
  params.ssid = nla_data(info->attrs[NL80211_ATTR_SSID]);
  params.ssid_len =
   nla_len(info->attrs[NL80211_ATTR_SSID]);
  if (params.ssid_len == 0 ||
      params.ssid_len > IEEE80211_MAX_SSID_LEN)
   return -EINVAL;
 }

 if (info->attrs[NL80211_ATTR_HIDDEN_SSID])
  params.hidden_ssid = nla_get_u32(
   info->attrs[NL80211_ATTR_HIDDEN_SSID]);

 params.privacy = !!info->attrs[NL80211_ATTR_PRIVACY];

 if (info->attrs[NL80211_ATTR_AUTH_TYPE]) {
  params.auth_type = nla_get_u32(
   info->attrs[NL80211_ATTR_AUTH_TYPE]);
  if (!nl80211_valid_auth_type(rdev, params.auth_type,
          NL80211_CMD_START_AP))
   return -EINVAL;
 } else
  params.auth_type = NL80211_AUTHTYPE_AUTOMATIC;

 err = nl80211_crypto_settings(rdev, info, &params.crypto,
          NL80211_MAX_NR_CIPHER_SUITES);
 if (err)
  return err;

 if (info->attrs[NL80211_ATTR_INACTIVITY_TIMEOUT]) {
  if (!(rdev->wiphy.features & NL80211_FEATURE_INACTIVITY_TIMER))
   return -EOPNOTSUPP;
  params.inactivity_timeout = nla_get_u16(
   info->attrs[NL80211_ATTR_INACTIVITY_TIMEOUT]);
 }

 if (info->attrs[NL80211_ATTR_P2P_CTWINDOW]) {
  if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
   return -EINVAL;
  params.p2p_ctwindow =
   nla_get_u8(info->attrs[NL80211_ATTR_P2P_CTWINDOW]);
  if (params.p2p_ctwindow != 0 &&
      !(rdev->wiphy.features & NL80211_FEATURE_P2P_GO_CTWIN))
   return -EINVAL;
 }

 if (info->attrs[NL80211_ATTR_P2P_OPPPS]) {
  u8 tmp;

  if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
   return -EINVAL;
  tmp = nla_get_u8(info->attrs[NL80211_ATTR_P2P_OPPPS]);
  params.p2p_opp_ps = tmp;
  if (params.p2p_opp_ps != 0 &&
      !(rdev->wiphy.features & NL80211_FEATURE_P2P_GO_OPPPS))
   return -EINVAL;
 }

 if (info->attrs[NL80211_ATTR_WIPHY_FREQ]) {
  err = nl80211_parse_chandef(rdev, info, &params.chandef);
  if (err)
   return err;
 } else if (wdev->preset_chandef.chan) {
  params.chandef = wdev->preset_chandef;
 } else if (!nl80211_get_ap_channel(rdev, &params))
  return -EINVAL;

 if (!cfg80211_reg_can_beacon_relax(&rdev->wiphy, &params.chandef,
        wdev->iftype))
  return -EINVAL;

 if (info->attrs[NL80211_ATTR_TX_RATES]) {
  err = nl80211_parse_tx_bitrate_mask(info, &params.beacon_rate);
  if (err)
   return err;

  err = validate_beacon_tx_rate(rdev, params.chandef.chan->band,
           &params.beacon_rate);
  if (err)
   return err;
 }

 if (info->attrs[NL80211_ATTR_SMPS_MODE]) {
  params.smps_mode =
   nla_get_u8(info->attrs[NL80211_ATTR_SMPS_MODE]);
  switch (params.smps_mode) {
  case 129:
   break;
  case 128:
   if (!(rdev->wiphy.features &
         NL80211_FEATURE_STATIC_SMPS))
    return -EINVAL;
   break;
  case 130:
   if (!(rdev->wiphy.features &
         NL80211_FEATURE_DYNAMIC_SMPS))
    return -EINVAL;
   break;
  default:
   return -EINVAL;
  }
 } else {
  params.smps_mode = 129;
 }

 params.pbss = nla_get_flag(info->attrs[NL80211_ATTR_PBSS]);
 if (params.pbss && !rdev->wiphy.bands[NL80211_BAND_60GHZ])
  return -EOPNOTSUPP;

 if (info->attrs[NL80211_ATTR_ACL_POLICY]) {
  params.acl = parse_acl_data(&rdev->wiphy, info);
  if (IS_ERR(params.acl))
   return PTR_ERR(params.acl);
 }

 params.twt_responder =
      nla_get_flag(info->attrs[NL80211_ATTR_TWT_RESPONDER]);

 if (info->attrs[NL80211_ATTR_HE_OBSS_PD]) {
  err = nl80211_parse_he_obss_pd(
     info->attrs[NL80211_ATTR_HE_OBSS_PD],
     &params.he_obss_pd);
  if (err)
   return err;
 }

 nl80211_calculate_ap_params(&params);

 if (info->attrs[NL80211_ATTR_EXTERNAL_AUTH_SUPPORT])
  params.flags |= AP_SETTINGS_EXTERNAL_AUTH_SUPPORT;

 wdev_lock(wdev);
 err = rdev_start_ap(rdev, dev, &params);
 if (!err) {
  wdev->preset_chandef = params.chandef;
  wdev->beacon_interval = params.beacon_interval;
  wdev->chandef = params.chandef;
  wdev->ssid_len = params.ssid_len;
  memcpy(wdev->ssid, params.ssid, wdev->ssid_len);

  if (info->attrs[NL80211_ATTR_SOCKET_OWNER])
   wdev->conn_owner_nlportid = info->snd_portid;
 }
 wdev_unlock(wdev);

 kfree(params.acl);

 return err;
}
