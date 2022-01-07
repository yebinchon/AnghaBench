
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct wiphy {int dummy; } ;
struct cfg80211_sched_scan_request {int report_results; } ;
struct cfg80211_registered_device {int sched_scan_res_wk; } ;


 struct cfg80211_sched_scan_request* cfg80211_find_sched_scan_req (struct cfg80211_registered_device*,int ) ;
 int cfg80211_wq ;
 int queue_work (int ,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_cfg80211_sched_scan_results (struct wiphy*,int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_sched_scan_results(struct wiphy *wiphy, u64 reqid)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 struct cfg80211_sched_scan_request *request;

 trace_cfg80211_sched_scan_results(wiphy, reqid);


 rcu_read_lock();
 request = cfg80211_find_sched_scan_req(rdev, reqid);
 if (request) {
  request->report_results = 1;
  queue_work(cfg80211_wq, &rdev->sched_scan_res_wk);
 }
 rcu_read_unlock();
}
