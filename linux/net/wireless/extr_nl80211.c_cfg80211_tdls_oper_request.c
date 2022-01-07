
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wireless_dev {int wiphy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;
typedef enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;


 int ETH_ALEN ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_REASON_CODE ;
 int NL80211_ATTR_TDLS_OPERATION ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_TDLS_OPER ;
 int NL80211_MCGRP_MLME ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int const*) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int trace_cfg80211_tdls_oper_request (int ,struct net_device*,int const*,int,int ) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

void cfg80211_tdls_oper_request(struct net_device *dev, const u8 *peer,
    enum nl80211_tdls_operation oper,
    u16 reason_code, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct sk_buff *msg;
 void *hdr;

 trace_cfg80211_tdls_oper_request(wdev->wiphy, dev, peer, oper,
      reason_code);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_TDLS_OPER);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
     nla_put_u8(msg, NL80211_ATTR_TDLS_OPERATION, oper) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, peer) ||
     (reason_code > 0 &&
      nla_put_u16(msg, NL80211_ATTR_REASON_CODE, reason_code)))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
