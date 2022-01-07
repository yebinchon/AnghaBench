
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct cfg80211_registered_device {int wiphy; } ;
typedef int gfp_t ;


 int NL80211_MCGRP_MLME ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int memset (scalar_t__,int ,int) ;
 int nl80211_fam ;
 int nla_nest_end (struct sk_buff*,void*) ;
 int wiphy_net (int *) ;

__attribute__((used)) static void cfg80211_send_cqm(struct sk_buff *msg, gfp_t gfp)
{
 void **cb = (void **)msg->cb;
 struct cfg80211_registered_device *rdev = cb[2];

 nla_nest_end(msg, cb[1]);
 genlmsg_end(msg, cb[0]);

 memset(msg->cb, 0, sizeof(msg->cb));

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
}
