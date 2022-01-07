
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nl80211_dump_wiphy_state {int dummy; } ;
struct cfg80211_registered_device {int wiphy; } ;
typedef enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;


 int GFP_KERNEL ;
 int NL80211_CMD_DEL_WIPHY ;
 int NL80211_CMD_NEW_WIPHY ;
 int NL80211_MCGRP_CONFIG ;
 int NLMSG_DEFAULT_SIZE ;
 int WARN_ON (int) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 scalar_t__ nl80211_send_wiphy (struct cfg80211_registered_device*,int,struct sk_buff*,int ,int ,int ,struct nl80211_dump_wiphy_state*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int *) ;

void nl80211_notify_wiphy(struct cfg80211_registered_device *rdev,
     enum nl80211_commands cmd)
{
 struct sk_buff *msg;
 struct nl80211_dump_wiphy_state state = {};

 WARN_ON(cmd != NL80211_CMD_NEW_WIPHY &&
  cmd != NL80211_CMD_DEL_WIPHY);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return;

 if (nl80211_send_wiphy(rdev, cmd, msg, 0, 0, 0, &state) < 0) {
  nlmsg_free(msg);
  return;
 }

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_CONFIG, GFP_KERNEL);
}
