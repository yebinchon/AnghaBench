
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy_idx; int wiphy; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef int gfp_t ;
typedef enum nl80211_radar_event { ____Placeholder_nl80211_radar_event } nl80211_radar_event ;


 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_RADAR_EVENT ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_RADAR_DETECT ;
 int NL80211_MCGRP_MLME ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 scalar_t__ nl80211_send_chandef (struct sk_buff*,struct cfg80211_chan_def const*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (int *) ;

void
nl80211_radar_notify(struct cfg80211_registered_device *rdev,
       const struct cfg80211_chan_def *chandef,
       enum nl80211_radar_event event,
       struct net_device *netdev, gfp_t gfp)
{
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_RADAR_DETECT);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx))
  goto nla_put_failure;


 if (netdev) {
  struct wireless_dev *wdev = netdev->ieee80211_ptr;

  if (nla_put_u32(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
      nla_put_u64_64bit(msg, NL80211_ATTR_WDEV, wdev_id(wdev),
          NL80211_ATTR_PAD))
   goto nla_put_failure;
 }

 if (nla_put_u32(msg, NL80211_ATTR_RADAR_EVENT, event))
  goto nla_put_failure;

 if (nl80211_send_chandef(msg, chandef))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
