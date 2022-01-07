
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
struct cfg80211_ft_event_params {scalar_t__ ric_ies; scalar_t__ ric_ies_len; scalar_t__ ies; scalar_t__ ies_len; scalar_t__ target_ap; } ;
struct TYPE_2__ {struct wiphy* wiphy; } ;


 scalar_t__ ETH_ALEN ;
 int GFP_KERNEL ;
 int NL80211_ATTR_IE ;
 int NL80211_ATTR_IE_RIC ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_FT_EVENT ;
 int NL80211_MCGRP_MLME ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (scalar_t__,int ) ;
 int trace_cfg80211_ft_event (struct wiphy*,struct net_device*,struct cfg80211_ft_event_params*) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_ft_event(struct net_device *netdev,
         struct cfg80211_ft_event_params *ft_event)
{
 struct wiphy *wiphy = netdev->ieee80211_ptr->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 struct sk_buff *msg;
 void *hdr;

 trace_cfg80211_ft_event(wiphy, netdev, ft_event);

 if (!ft_event->target_ap)
  return;

 msg = nlmsg_new(100 + ft_event->ies_len + ft_event->ric_ies_len,
   GFP_KERNEL);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_FT_EVENT);
 if (!hdr)
  goto out;

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, ft_event->target_ap))
  goto out;

 if (ft_event->ies &&
     nla_put(msg, NL80211_ATTR_IE, ft_event->ies_len, ft_event->ies))
  goto out;
 if (ft_event->ric_ies &&
     nla_put(msg, NL80211_ATTR_IE_RIC, ft_event->ric_ies_len,
      ft_event->ric_ies))
  goto out;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, GFP_KERNEL);
 return;
 out:
 nlmsg_free(msg);
}
