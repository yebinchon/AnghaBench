
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct wireless_dev {int owner_nlportid; TYPE_1__* netdev; struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;
typedef enum nl80211_nan_func_term_reason { ____Placeholder_nl80211_nan_func_term_reason } nl80211_nan_func_term_reason ;
struct TYPE_2__ {int ifindex; } ;


 int NL80211_ATTR_COOKIE ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_NAN_FUNC ;
 int NL80211_ATTR_PAD ;
 int NL80211_ATTR_WDEV ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_DEL_NAN_FUNCTION ;
 int NL80211_MCGRP_NAN ;
 int NL80211_NAN_FUNC_INSTANCE_ID ;
 int NL80211_NAN_FUNC_TERM_REASON ;
 int NLMSG_DEFAULT_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int genlmsg_unicast (int ,struct sk_buff*,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wdev_id (struct wireless_dev*) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_nan_func_terminated(struct wireless_dev *wdev,
      u8 inst_id,
      enum nl80211_nan_func_term_reason reason,
      u64 cookie, gfp_t gfp)
{
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 struct sk_buff *msg;
 struct nlattr *func_attr;
 void *hdr;

 if (WARN_ON(!inst_id))
  return;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_DEL_NAN_FUNCTION);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     (wdev->netdev && nla_put_u32(msg, NL80211_ATTR_IFINDEX,
      wdev->netdev->ifindex)) ||
     nla_put_u64_64bit(msg, NL80211_ATTR_WDEV, wdev_id(wdev),
         NL80211_ATTR_PAD))
  goto nla_put_failure;

 if (nla_put_u64_64bit(msg, NL80211_ATTR_COOKIE, cookie,
         NL80211_ATTR_PAD))
  goto nla_put_failure;

 func_attr = nla_nest_start_noflag(msg, NL80211_ATTR_NAN_FUNC);
 if (!func_attr)
  goto nla_put_failure;

 if (nla_put_u8(msg, NL80211_NAN_FUNC_INSTANCE_ID, inst_id) ||
     nla_put_u8(msg, NL80211_NAN_FUNC_TERM_REASON, reason))
  goto nla_put_failure;

 nla_nest_end(msg, func_attr);
 genlmsg_end(msg, hdr);

 if (!wdev->owner_nlportid)
  genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy),
     msg, 0, NL80211_MCGRP_NAN, gfp);
 else
  genlmsg_unicast(wiphy_net(&rdev->wiphy), msg,
    wdev->owner_nlportid);

 return;

nla_put_failure:
 nlmsg_free(msg);
}
