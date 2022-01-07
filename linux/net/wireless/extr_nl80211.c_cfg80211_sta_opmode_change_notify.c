
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {int wiphy; } ;
struct sta_opmode_info {int changed; int rx_nss; int bw; int smps_mode; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;


 int ETH_ALEN ;
 int NL80211_ATTR_CHANNEL_WIDTH ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_NSS ;
 int NL80211_ATTR_SMPS_MODE ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_STA_OPMODE_CHANGED ;
 int NL80211_MCGRP_MLME ;
 int NLMSG_DEFAULT_SIZE ;
 int STA_OPMODE_MAX_BW_CHANGED ;
 int STA_OPMODE_N_SS_CHANGED ;
 int STA_OPMODE_SMPS_MODE_CHANGED ;
 scalar_t__ WARN_ON (int) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

void cfg80211_sta_opmode_change_notify(struct net_device *dev, const u8 *mac,
           struct sta_opmode_info *sta_opmode,
           gfp_t gfp)
{
 struct sk_buff *msg;
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 void *hdr;

 if (WARN_ON(!mac))
  return;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_STA_OPMODE_CHANGED);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx))
  goto nla_put_failure;

 if (nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex))
  goto nla_put_failure;

 if (nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, mac))
  goto nla_put_failure;

 if ((sta_opmode->changed & STA_OPMODE_SMPS_MODE_CHANGED) &&
     nla_put_u8(msg, NL80211_ATTR_SMPS_MODE, sta_opmode->smps_mode))
  goto nla_put_failure;

 if ((sta_opmode->changed & STA_OPMODE_MAX_BW_CHANGED) &&
     nla_put_u8(msg, NL80211_ATTR_CHANNEL_WIDTH, sta_opmode->bw))
  goto nla_put_failure;

 if ((sta_opmode->changed & STA_OPMODE_N_SS_CHANGED) &&
     nla_put_u8(msg, NL80211_ATTR_NSS, sta_opmode->rx_nss))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);

 return;

nla_put_failure:
 nlmsg_free(msg);
}
