
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy_idx; int wiphy; } ;
typedef int gfp_t ;
typedef enum nl80211_key_type { ____Placeholder_nl80211_key_type } nl80211_key_type ;


 int ETH_ALEN ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_KEY_IDX ;
 int NL80211_ATTR_KEY_SEQ ;
 int NL80211_ATTR_KEY_TYPE ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_MICHAEL_MIC_FAILURE ;
 int NL80211_MCGRP_MLME ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;

void nl80211_michael_mic_failure(struct cfg80211_registered_device *rdev,
     struct net_device *netdev, const u8 *addr,
     enum nl80211_key_type key_type, int key_id,
     const u8 *tsc, gfp_t gfp)
{
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_MICHAEL_MIC_FAILURE);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
     (addr && nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, addr)) ||
     nla_put_u32(msg, NL80211_ATTR_KEY_TYPE, key_type) ||
     (key_id != -1 &&
      nla_put_u8(msg, NL80211_ATTR_KEY_IDX, key_id)) ||
     (tsc && nla_put(msg, NL80211_ATTR_KEY_SEQ, 6, tsc)))
  goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
