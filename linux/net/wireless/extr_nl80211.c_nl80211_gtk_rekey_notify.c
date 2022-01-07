
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy; int wiphy_idx; } ;
typedef int gfp_t ;


 int ETH_ALEN ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_MAC ;
 int NL80211_ATTR_REKEY_DATA ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_SET_REKEY_OFFLOAD ;
 int NL80211_MCGRP_MLME ;
 int NL80211_REKEY_DATA_REPLAY_CTR ;
 int NL80211_REPLAY_CTR_LEN ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;

__attribute__((used)) static void nl80211_gtk_rekey_notify(struct cfg80211_registered_device *rdev,
         struct net_device *netdev, const u8 *bssid,
         const u8 *replay_ctr, gfp_t gfp)
{
 struct sk_buff *msg;
 struct nlattr *rekey_attr;
 void *hdr;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_SET_REKEY_OFFLOAD);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
     nla_put(msg, NL80211_ATTR_MAC, ETH_ALEN, bssid))
  goto nla_put_failure;

 rekey_attr = nla_nest_start_noflag(msg, NL80211_ATTR_REKEY_DATA);
 if (!rekey_attr)
  goto nla_put_failure;

 if (nla_put(msg, NL80211_REKEY_DATA_REPLAY_CTR,
      NL80211_REPLAY_CTR_LEN, replay_ctr))
  goto nla_put_failure;

 nla_nest_end(msg, rekey_attr);

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
