
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int sched_scan_stopped_work; scalar_t__ in_reconfig; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int schedule_work (int *) ;
 int trace_api_sched_scan_stopped (struct ieee80211_local*) ;

void ieee80211_sched_scan_stopped(struct ieee80211_hw *hw)
{
 struct ieee80211_local *local = hw_to_local(hw);

 trace_api_sched_scan_stopped(local);






 if (local->in_reconfig)
  return;

 schedule_work(&local->sched_scan_stopped_work);
}
