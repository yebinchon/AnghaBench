
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {TYPE_1__* netdev; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int wiphy_idx; } ;
struct TYPE_2__ {int ifindex; } ;


 int GFP_KERNEL ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_STOP_AP ;
 int NL80211_MCGRP_MLME ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (struct wiphy*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void nl80211_send_ap_stopped(struct wireless_dev *wdev)
{
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_STOP_AP);
 if (!hdr)
  goto out;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, wdev->netdev->ifindex) ||
     nla_put_u64_64bit(msg, NL80211_ATTR_WDEV, wdev_id(wdev),
         NL80211_ATTR_PAD))
  goto out;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(wiphy), msg, 0,
    NL80211_MCGRP_MLME, GFP_KERNEL);
 return;
 out:
 nlmsg_free(msg);
}
