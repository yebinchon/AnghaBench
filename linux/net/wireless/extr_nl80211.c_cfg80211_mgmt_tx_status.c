
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct wireless_dev {struct net_device* netdev; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;


 int NL80211_ATTR_ACK ;
 int NL80211_ATTR_COOKIE ;
 int NL80211_ATTR_FRAME ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_FRAME_TX_STATUS ;
 int NL80211_MCGRP_MLME ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,size_t,int const*) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int,int ) ;
 int trace_cfg80211_mgmt_tx_status (struct wireless_dev*,int ,int) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_mgmt_tx_status(struct wireless_dev *wdev, u64 cookie,
        const u8 *buf, size_t len, bool ack, gfp_t gfp)
{
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 struct net_device *netdev = wdev->netdev;
 struct sk_buff *msg;
 void *hdr;

 trace_cfg80211_mgmt_tx_status(wdev, cookie, ack);

 msg = nlmsg_new(100 + len, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_FRAME_TX_STATUS);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     (netdev && nla_put_u32(msg, NL80211_ATTR_IFINDEX,
       netdev->ifindex)) ||
     nla_put_u64_64bit(msg, NL80211_ATTR_WDEV, wdev_id(wdev),
         NL80211_ATTR_PAD) ||
     nla_put(msg, NL80211_ATTR_FRAME, len, buf) ||
     nla_put_u64_64bit(msg, NL80211_ATTR_COOKIE, cookie,
         NL80211_ATTR_PAD) ||
     (ack && nla_put_flag(msg, NL80211_ATTR_ACK)))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
