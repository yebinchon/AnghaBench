
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_sched_scan_request {int list; } ;
struct cfg80211_registered_device {int dummy; } ;


 int ASSERT_RTNL () ;
 int kfree_rcu (struct cfg80211_sched_scan_request*,int ) ;
 int list_del_rcu (int *) ;
 int rcu_head ;

__attribute__((used)) static void cfg80211_del_sched_scan_req(struct cfg80211_registered_device *rdev,
     struct cfg80211_sched_scan_request *req)
{
 ASSERT_RTNL();

 list_del_rcu(&req->list);
 kfree_rcu(req, rcu_head);
}
