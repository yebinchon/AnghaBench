
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int wiphy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct net_device {int ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy_idx; } ;
typedef int gfp_t ;


 int ETH_ALEN ;
 int NL80211_ATTR_CQM ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_NOTIFY_CQM ;
 int NLMSG_DEFAULT_SIZE ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 void* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,char const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static struct sk_buff *cfg80211_prepare_cqm(struct net_device *dev,
         const char *mac, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct sk_buff *msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 void **cb;

 if (!msg)
  return ((void*)0);

 cb = (void **)msg->cb;

 cb[0] = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_NOTIFY_CQM);
 if (!cb[0]) {
  nlmsg_free(msg);
  return ((void*)0);
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, dev->ifindex))
  goto nla_put_failure;

 if (mac && nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, mac))
  goto nla_put_failure;

 cb[1] = nla_nest_start_noflag(msg, NL80211_ATTR_CQM);
 if (!cb[1])
  goto nla_put_failure;

 cb[2] = rdev;

 return msg;
 nla_put_failure:
 nlmsg_free(msg);
 return ((void*)0);
}
