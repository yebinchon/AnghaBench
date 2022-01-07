
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_sched_scan_request {int list; } ;
struct cfg80211_registered_device {int sched_scan_req_list; } ;


 int ASSERT_RTNL () ;
 int list_add_rcu (int *,int *) ;

void cfg80211_add_sched_scan_req(struct cfg80211_registered_device *rdev,
     struct cfg80211_sched_scan_request *req)
{
 ASSERT_RTNL();

 list_add_rcu(&req->list, &rdev->sched_scan_req_list);
}
