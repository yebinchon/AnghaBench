
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {int mesh_id_up_len; int ssid; int owner_nlportid; } ;
struct vif_params {int use_4addr; int macaddr; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; scalar_t__* attrs; struct cfg80211_registered_device** user_ptr; } ;
struct TYPE_4__ {int features; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; } ;
typedef int params ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_3__ {int add_virtual_intf; } ;


 int BUILD_BUG_ON (int) ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EPROTO ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int IEEE80211_MAX_MESH_ID_LEN ;
 int IEEE80211_MAX_SSID_LEN ;
 scalar_t__ IS_ERR (struct wireless_dev*) ;
 int NET_NAME_USER ;
 size_t NL80211_ATTR_4ADDR ;
 size_t NL80211_ATTR_IFNAME ;
 size_t NL80211_ATTR_IFTYPE ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_MESH_ID ;
 size_t NL80211_ATTR_SOCKET_OWNER ;
 int NL80211_CMD_NEW_INTERFACE ;
 int NL80211_FEATURE_MAC_ON_CREATE ;



 int NL80211_IFTYPE_UNSPECIFIED ;
 int NLMSG_DEFAULT_SIZE ;
 int PTR_ERR (struct wireless_dev*) ;
 scalar_t__ WARN_ON (int) ;
 int cfg80211_destroy_ifaces (struct cfg80211_registered_device*) ;
 int cfg80211_iftype_allowed (TYPE_2__*,int,int,int ) ;
 int cfg80211_init_wdev (struct cfg80211_registered_device*,struct wireless_dev*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct vif_params*,int ,int) ;
 int nl80211_parse_mon_options (struct cfg80211_registered_device*,int,struct genl_info*,struct vif_params*) ;
 scalar_t__ nl80211_send_iface (struct sk_buff*,int ,int ,int ,struct cfg80211_registered_device*,struct wireless_dev*,int ) ;
 int nl80211_valid_4addr (struct cfg80211_registered_device*,int *,int,int) ;
 int nla_data (scalar_t__) ;
 int nla_get_u32 (scalar_t__) ;
 int nla_get_u8 (scalar_t__) ;
 int nla_len (scalar_t__) ;
 int nla_memcpy (int ,scalar_t__,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct wireless_dev* rdev_add_virtual_intf (struct cfg80211_registered_device*,int ,int ,int,struct vif_params*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

__attribute__((used)) static int nl80211_new_interface(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct vif_params params;
 struct wireless_dev *wdev;
 struct sk_buff *msg;
 int err;
 enum nl80211_iftype type = NL80211_IFTYPE_UNSPECIFIED;


 cfg80211_destroy_ifaces(rdev);

 memset(&params, 0, sizeof(params));

 if (!info->attrs[NL80211_ATTR_IFNAME])
  return -EINVAL;

 if (info->attrs[NL80211_ATTR_IFTYPE])
  type = nla_get_u32(info->attrs[NL80211_ATTR_IFTYPE]);

 if (!rdev->ops->add_virtual_intf)
  return -EOPNOTSUPP;

 if ((type == 128 || type == 129 ||
      rdev->wiphy.features & NL80211_FEATURE_MAC_ON_CREATE) &&
     info->attrs[NL80211_ATTR_MAC]) {
  nla_memcpy(params.macaddr, info->attrs[NL80211_ATTR_MAC],
      ETH_ALEN);
  if (!is_valid_ether_addr(params.macaddr))
   return -EADDRNOTAVAIL;
 }

 if (info->attrs[NL80211_ATTR_4ADDR]) {
  params.use_4addr = !!nla_get_u8(info->attrs[NL80211_ATTR_4ADDR]);
  err = nl80211_valid_4addr(rdev, ((void*)0), params.use_4addr, type);
  if (err)
   return err;
 }

 if (!cfg80211_iftype_allowed(&rdev->wiphy, type, params.use_4addr, 0))
  return -EOPNOTSUPP;

 err = nl80211_parse_mon_options(rdev, type, info, &params);
 if (err < 0)
  return err;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 wdev = rdev_add_virtual_intf(rdev,
    nla_data(info->attrs[NL80211_ATTR_IFNAME]),
    NET_NAME_USER, type, &params);
 if (WARN_ON(!wdev)) {
  nlmsg_free(msg);
  return -EPROTO;
 } else if (IS_ERR(wdev)) {
  nlmsg_free(msg);
  return PTR_ERR(wdev);
 }

 if (info->attrs[NL80211_ATTR_SOCKET_OWNER])
  wdev->owner_nlportid = info->snd_portid;

 switch (type) {
 case 130:
  if (!info->attrs[NL80211_ATTR_MESH_ID])
   break;
  wdev_lock(wdev);
  BUILD_BUG_ON(IEEE80211_MAX_SSID_LEN !=
        IEEE80211_MAX_MESH_ID_LEN);
  wdev->mesh_id_up_len =
   nla_len(info->attrs[NL80211_ATTR_MESH_ID]);
  memcpy(wdev->ssid, nla_data(info->attrs[NL80211_ATTR_MESH_ID]),
         wdev->mesh_id_up_len);
  wdev_unlock(wdev);
  break;
 case 129:
 case 128:




  cfg80211_init_wdev(rdev, wdev);
  break;
 default:
  break;
 }

 if (nl80211_send_iface(msg, info->snd_portid, info->snd_seq, 0,
          rdev, wdev, NL80211_CMD_NEW_INTERFACE) < 0) {
  nlmsg_free(msg);
  return -ENOBUFS;
 }

 return genlmsg_reply(msg, info);
}
