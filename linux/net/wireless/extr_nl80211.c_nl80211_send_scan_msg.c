
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {int wiphy; } ;


 int GFP_KERNEL ;
 int NL80211_MCGRP_SCAN ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 int wiphy_net (int *) ;

void nl80211_send_scan_msg(struct cfg80211_registered_device *rdev,
      struct sk_buff *msg)
{
 if (!msg)
  return;

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_SCAN, GFP_KERNEL);
}
