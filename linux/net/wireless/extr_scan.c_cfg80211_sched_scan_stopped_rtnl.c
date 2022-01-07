
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;


 int ASSERT_RTNL () ;
 int __cfg80211_stop_sched_scan (struct cfg80211_registered_device*,int ,int) ;
 int trace_cfg80211_sched_scan_stopped (struct wiphy*,int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_sched_scan_stopped_rtnl(struct wiphy *wiphy, u64 reqid)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);

 ASSERT_RTNL();

 trace_cfg80211_sched_scan_stopped(wiphy, reqid);

 __cfg80211_stop_sched_scan(rdev, reqid, 1);
}
