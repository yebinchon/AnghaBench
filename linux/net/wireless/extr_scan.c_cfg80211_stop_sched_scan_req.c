
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_sched_scan_request {int reqid; int dev; } ;
struct cfg80211_registered_device {int dummy; } ;


 int ASSERT_RTNL () ;
 int NL80211_CMD_SCHED_SCAN_STOPPED ;
 int cfg80211_del_sched_scan_req (struct cfg80211_registered_device*,struct cfg80211_sched_scan_request*) ;
 int nl80211_send_sched_scan (struct cfg80211_sched_scan_request*,int ) ;
 int rdev_sched_scan_stop (struct cfg80211_registered_device*,int ,int ) ;

int cfg80211_stop_sched_scan_req(struct cfg80211_registered_device *rdev,
     struct cfg80211_sched_scan_request *req,
     bool driver_initiated)
{
 ASSERT_RTNL();

 if (!driver_initiated) {
  int err = rdev_sched_scan_stop(rdev, req->dev, req->reqid);
  if (err)
   return err;
 }

 nl80211_send_sched_scan(req, NL80211_CMD_SCHED_SCAN_STOPPED);

 cfg80211_del_sched_scan_req(rdev, req);

 return 0;
}
