
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wiphy {int dummy; } ;


 int cfg80211_sched_scan_stopped_rtnl (struct wiphy*,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void cfg80211_sched_scan_stopped(struct wiphy *wiphy, u64 reqid)
{
 rtnl_lock();
 cfg80211_sched_scan_stopped_rtnl(wiphy, reqid);
 rtnl_unlock();
}
