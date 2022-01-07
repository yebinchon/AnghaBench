
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wiphy; } ;
struct ieee80211_local {TYPE_1__ hw; } ;


 int cfg80211_sched_scan_stopped_rtnl (int ,int ) ;
 scalar_t__ ieee80211_request_sched_scan_stop (struct ieee80211_local*) ;

__attribute__((used)) static void ieee80211_sched_scan_cancel(struct ieee80211_local *local)
{
 if (ieee80211_request_sched_scan_stop(local))
  return;
 cfg80211_sched_scan_stopped_rtnl(local->hw.wiphy, 0);
}
