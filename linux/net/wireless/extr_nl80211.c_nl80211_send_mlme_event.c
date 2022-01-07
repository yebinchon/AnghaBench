
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
typedef enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;


 int NL80211_ATTR_FRAME ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_ATTR_REQ_IE ;
 int NL80211_ATTR_STA_WME ;
 int NL80211_ATTR_WIPHY ;
 int NL80211_MCGRP_MLME ;
 int NL80211_STA_WME_UAPSD_QUEUES ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,size_t,int const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int,int ) ;
 int wiphy_net (int *) ;

__attribute__((used)) static void nl80211_send_mlme_event(struct cfg80211_registered_device *rdev,
        struct net_device *netdev,
        const u8 *buf, size_t len,
        enum nl80211_commands cmd, gfp_t gfp,
        int uapsd_queues, const u8 *req_ies,
        size_t req_ies_len)
{
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(100 + len + req_ies_len, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, cmd);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
     nla_put_u32(msg, NL80211_ATTR_IFINDEX, netdev->ifindex) ||
     nla_put(msg, NL80211_ATTR_FRAME, len, buf) ||
     (req_ies &&
      nla_put(msg, NL80211_ATTR_REQ_IE, req_ies_len, req_ies)))
  goto nla_put_failure;

 if (uapsd_queues >= 0) {
  struct nlattr *nla_wmm =
   nla_nest_start_noflag(msg, NL80211_ATTR_STA_WME);
  if (!nla_wmm)
   goto nla_put_failure;

  if (nla_put_u8(msg, NL80211_STA_WME_UAPSD_QUEUES,
          uapsd_queues))
   goto nla_put_failure;

  nla_nest_end(msg, nla_wmm);
 }

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
