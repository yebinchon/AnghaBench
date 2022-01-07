
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wiphy {int dummy; } ;
struct station_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct cfg80211_registered_device {int wiphy; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct wiphy* wiphy; } ;


 int NL80211_CMD_DEL_STATION ;
 int NL80211_MCGRP_MLME ;
 int NLMSG_DEFAULT_SIZE ;
 int cfg80211_sinfo_release_content (struct station_info*) ;
 int genlmsg_multicast_netns (int *,int ,struct sk_buff*,int ,int ,int ) ;
 int nl80211_fam ;
 scalar_t__ nl80211_send_station (struct sk_buff*,int ,int ,int ,int ,struct cfg80211_registered_device*,struct net_device*,int const*,struct station_info*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int trace_cfg80211_del_sta (struct net_device*,int const*) ;
 int wiphy_net (int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_del_sta_sinfo(struct net_device *dev, const u8 *mac_addr,
       struct station_info *sinfo, gfp_t gfp)
{
 struct wiphy *wiphy = dev->ieee80211_ptr->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 struct sk_buff *msg;
 struct station_info empty_sinfo = {};

 if (!sinfo)
  sinfo = &empty_sinfo;

 trace_cfg80211_del_sta(dev, mac_addr);

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, gfp);
 if (!msg) {
  cfg80211_sinfo_release_content(sinfo);
  return;
 }

 if (nl80211_send_station(msg, NL80211_CMD_DEL_STATION, 0, 0, 0,
     rdev, dev, mac_addr, sinfo) < 0) {
  nlmsg_free(msg);
  return;
 }

 genlmsg_multicast_netns(&nl80211_fam, wiphy_net(&rdev->wiphy), msg, 0,
    NL80211_MCGRP_MLME, gfp);
}
