
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy_idx; int wiphy; } ;
typedef int gfp_t ;


 int ETH_ALEN ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_PMKSA_CANDIDATE ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_CMD_PMKSA_CANDIDATE ;
 int NL80211_MCGRP_MLME ;
 int NL80211_PMKSA_CANDIDATE_BSSID ;
 int NL80211_PMKSA_CANDIDATE_INDEX ;
 int NL80211_PMKSA_CANDIDATE_PREAUTH ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int const*) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;

__attribute__((used)) static void
nl80211_pmksa_candidate_notify(struct cfg80211_registered_device *rdev,
          struct net_device *netdev, int index,
          const u8 *bssid, bool preauth, gfp_t gfp)
{
 struct sk_buff *msg;
 struct nlattr *attr;
 void *hdr;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, NL80211_CMD_PMKSA_CANDIDATE);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, netdev->ifindex))
  goto nla_put_failure;

 attr = nla_nest_start_noflag(msg, NL80211_ATTR_PMKSA_CANDIDATE);
 if (!attr)
  goto nla_put_failure;

 if (nla_put_u32(msg, NL80211_PMKSA_CANDIDATE_INDEX, index) ||
     nla_put(msg, NL80211_PMKSA_CANDIDATE_BSSID, ETH_ALEN, bssid) ||
     (preauth &&
      nla_put_flag(msg, NL80211_PMKSA_CANDIDATE_PREAUTH)))
  goto nla_put_failure;

 nla_nest_end(msg, attr);

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
