
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; int is_running; int opencount; int rfkill; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {scalar_t__ iftype; int is_running; int opencount; int rfkill; TYPE_1__* ops; } ;
struct TYPE_2__ {int start_p2p_device; } ;


 int EOPNOTSUPP ;
 int ERFKILL ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int rdev_start_p2p_device (struct wireless_dev*,struct wireless_dev*) ;
 scalar_t__ rfkill_blocked (int ) ;
 scalar_t__ wdev_running (struct wireless_dev*) ;

__attribute__((used)) static int nl80211_start_p2p_device(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct wireless_dev *wdev = info->user_ptr[1];
 int err;

 if (!rdev->ops->start_p2p_device)
  return -EOPNOTSUPP;

 if (wdev->iftype != NL80211_IFTYPE_P2P_DEVICE)
  return -EOPNOTSUPP;

 if (wdev_running(wdev))
  return 0;

 if (rfkill_blocked(rdev->rfkill))
  return -ERFKILL;

 err = rdev_start_p2p_device(rdev, wdev);
 if (err)
  return err;

 wdev->is_running = 1;
 rdev->opencount++;

 return 0;
}
