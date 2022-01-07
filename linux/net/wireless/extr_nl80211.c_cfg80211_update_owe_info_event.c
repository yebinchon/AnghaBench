
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_update_owe_info {int ie; int ie_len; int peer; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct wiphy* wiphy; } ;


 int ETH_ALEN ;
 int NL80211_ATTR_IE ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_UPDATE_OWE_INFO ;
 int NL80211_MCGRP_MLME ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int trace_cfg80211_update_owe_info_event (struct wiphy*,struct net_device*,struct cfg80211_update_owe_info*) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_update_owe_info_event(struct net_device *netdev,
        struct cfg80211_update_owe_info *owe_info,
        gfp_t gfp)
{
 struct wiphy *wiphy = netdev->ieee80211_ptr->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 struct sk_buff *msg;
 void *hdr;

 trace_cfg80211_update_owe_info_event(wiphy, netdev, owe_info);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_UPDATE_OWE_INFO);
 if (!hdr)
  goto nla_put_failure;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, owe_info->peer))
  goto nla_put_failure;

 if (!owe_info->ie_len ||
     nla_put(msg, NL80211_ATTR_IE, owe_info->ie_len, owe_info->ie))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
 return;

nla_put_failure:
 genlmsg_cancel(msg, hdr);
 nlmsg_free(msg);
}
