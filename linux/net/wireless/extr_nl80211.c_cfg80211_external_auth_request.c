
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int conn_owner_nlportid; int wiphy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
struct TYPE_2__ {int ssid; int ssid_len; } ;
struct cfg80211_external_auth_params {TYPE_1__ ssid; int bssid; int action; int key_mgmt_suite; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOBUFS ;
 int ENOMEM ;
 int ETH_ALEN ;
 int NL80211_ATTR_AKM_SUITES ;
 int NL80211_ATTR_BSSID ;
 int NL80211_ATTR_EXTERNAL_AUTH_ACTION ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_SSID ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_EXTERNAL_AUTH ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_unicast (int ,struct sk_buff*,int ) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

int cfg80211_external_auth_request(struct net_device *dev,
       struct cfg80211_external_auth_params *params,
       gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct sk_buff *msg;
 void *hdr;

 if (!wdev->conn_owner_nlportid)
  return -EINVAL;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return -ENOMEM;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_EXTERNAL_AUTH);
 if (!hdr)
  goto nla_put_failure;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
     nla_put_u32(msg, NL80211_ATTR_AKM_SUITES, params->key_mgmt_suite) ||
     nla_put_u32(msg, NL80211_ATTR_EXTERNAL_AUTH_ACTION,
   params->action) ||
     nla_put(msg, NL80211_ATTR_BSSID, ETH_ALEN, params->bssid) ||
     nla_put(msg, NL80211_ATTR_SSID, params->ssid.ssid_len,
      params->ssid.ssid))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);
 genlmsg_unicast(wiphy_net(&rdev->wiphy), msg,
   wdev->conn_owner_nlportid);
 return 0;

 nla_put_failure:
 nlmsg_free(msg);
 return -ENOBUFS;
}
