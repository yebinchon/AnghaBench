
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cfg80211_sched_scan_request {int wiphy; } ;


 int GFP_KERNEL ;
 int NL80211_MCGRP_SCAN ;
 int NLMSG_DEFAULT_SIZE ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 scalar_t__ nl80211_prep_sched_scan_msg (struct sk_buff*,struct cfg80211_sched_scan_request*,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int wiphy_net (int ) ;

void nl80211_send_sched_scan(struct cfg80211_sched_scan_request *req, u32 cmd)
{
 struct sk_buff *msg;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return;

 if (nl80211_prep_sched_scan_msg(msg, req, cmd) < 0) {
  nlmsg_free(msg);
  return;
 }

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(req->wiphy), msg, 0,
    NL80211_MCGRP_SCAN, GFP_KERNEL);
}
