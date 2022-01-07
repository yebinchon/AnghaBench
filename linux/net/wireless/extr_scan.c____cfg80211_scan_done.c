
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wrqu ;
typedef union iwreq_data {int dummy; } iwreq_data ;
struct wireless_dev {scalar_t__ netdev; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int aborted; } ;
struct cfg80211_scan_request {int flags; TYPE_1__ info; int scan_start; struct wireless_dev* wdev; } ;
struct cfg80211_registered_device {struct sk_buff* scan_msg; struct cfg80211_scan_request* scan_req; int bss_lock; } ;


 int ASSERT_RTNL () ;
 int NL80211_SCAN_FLAG_FLUSH ;
 int SIOCGIWSCAN ;
 int __cfg80211_bss_expire (struct cfg80211_registered_device*,int ) ;
 int cfg80211_sme_scan_done (scalar_t__) ;
 int dev_put (scalar_t__) ;
 int kfree (struct cfg80211_scan_request*) ;
 int memset (union iwreq_data*,int ,int) ;
 struct sk_buff* nl80211_build_scan_msg (struct cfg80211_registered_device*,struct wireless_dev*,int ) ;
 int nl80211_send_scan_msg (struct cfg80211_registered_device*,struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wireless_send_event (scalar_t__,int ,union iwreq_data*,int *) ;

void ___cfg80211_scan_done(struct cfg80211_registered_device *rdev,
      bool send_message)
{
 struct cfg80211_scan_request *request;
 struct wireless_dev *wdev;
 struct sk_buff *msg;




 ASSERT_RTNL();

 if (rdev->scan_msg) {
  nl80211_send_scan_msg(rdev, rdev->scan_msg);
  rdev->scan_msg = ((void*)0);
  return;
 }

 request = rdev->scan_req;
 if (!request)
  return;

 wdev = request->wdev;






 if (wdev->netdev)
  cfg80211_sme_scan_done(wdev->netdev);

 if (!request->info.aborted &&
     request->flags & NL80211_SCAN_FLAG_FLUSH) {

  spin_lock_bh(&rdev->bss_lock);
  __cfg80211_bss_expire(rdev, request->scan_start);
  spin_unlock_bh(&rdev->bss_lock);
 }

 msg = nl80211_build_scan_msg(rdev, wdev, request->info.aborted);
 if (wdev->netdev)
  dev_put(wdev->netdev);

 rdev->scan_req = ((void*)0);
 kfree(request);

 if (!send_message)
  rdev->scan_msg = msg;
 else
  nl80211_send_scan_msg(rdev, msg);
}
