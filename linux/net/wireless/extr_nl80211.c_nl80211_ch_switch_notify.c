
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef int gfp_t ;
typedef enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;


 int NL80211_ATTR_CH_SWITCH_COUNT ;
 int NL80211_ATTR_IFINDEX ;
 int NL80211_CMD_CH_SWITCH_STARTED_NOTIFY ;
 int NL80211_MCGRP_MLME ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 scalar_t__ nl80211_send_chandef (struct sk_buff*,struct cfg80211_chan_def*) ;
 void* nl80211hdr_put (struct sk_buff*,int ,int ,int ,int) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;

__attribute__((used)) static void nl80211_ch_switch_notify(struct cfg80211_registered_device *rdev,
         struct net_device *netdev,
         struct cfg80211_chan_def *chandef,
         gfp_t gfp,
         enum nl80211_commands notif,
         u8 count)
{
 struct sk_buff *msg;
 void *hdr;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg)
  return;

 hdr = nl80211hdr_put(msg, 0, 0, 0, notif);
 if (!hdr) {
  nlmsg_free(msg);
  return;
 }

 if (nla_put_u32(msg, NL80211_ATTR_IFINDEX, netdev->ifindex))
  goto nla_put_failure;

 if (nl80211_send_chandef(msg, chandef))
  goto nla_put_failure;

 if ((notif == NL80211_CMD_CH_SWITCH_STARTED_NOTIFY) &&
     (nla_put_u32(msg, NL80211_ATTR_CH_SWITCH_COUNT, count)))
   goto nla_put_failure;

 genlmsg_end(msg, hdr);

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
 return;

 nla_put_failure:
 nlmsg_free(msg);
}
