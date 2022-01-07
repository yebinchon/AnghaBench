
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int scan_req; scalar_t__ scan_msg; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {int scan_req; scalar_t__ scan_msg; TYPE_1__* ops; } ;
struct TYPE_2__ {int abort_scan; } ;


 int ENOENT ;
 int EOPNOTSUPP ;
 int rdev_abort_scan (struct wireless_dev*,struct wireless_dev*) ;

__attribute__((used)) static int nl80211_abort_scan(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct wireless_dev *wdev = info->user_ptr[1];

 if (!rdev->ops->abort_scan)
  return -EOPNOTSUPP;

 if (rdev->scan_msg)
  return 0;

 if (!rdev->scan_req)
  return -ENOENT;

 rdev_abort_scan(rdev, wdev);
 return 0;
}
