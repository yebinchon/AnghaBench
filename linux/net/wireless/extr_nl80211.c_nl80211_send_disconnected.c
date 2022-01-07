
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;


 int GFP_KERNEL ;
 int NL80211_ATTR_DISCONNECTED_BY_AP ;
 int NL80211_ATTR_IE ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_REASON_CODE ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_DISCONNECT ;
 int NL80211_MCGRP_MLME ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,size_t,int const*) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int,int ) ;
 int wiphy_net (int *) ;

void nl80211_send_disconnected(struct cfg80211_registered_device *rdev,
          struct net_device *netdev, u16 reason,
          const u8 *ie, size_t ie_len, bool from_ap)
{
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(100 + ie_len, GFP_KERNEL);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_DISCONNECT);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
     (reason &&
      nla_put_u16(msg, NL80211_ATTR_REASON_CODE, reason)) ||
     (from_ap &&
      nla_put_flag(msg, NL80211_ATTR_DISCONNECTED_BY_AP)) ||
     (ie && nla_put(msg, NL80211_ATTR_IE, ie_len, ie)))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, GFP_KERNEL);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
