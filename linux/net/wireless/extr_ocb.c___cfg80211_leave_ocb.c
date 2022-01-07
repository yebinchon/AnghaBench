
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; int chandef; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int leave_ocb; } ;


 int ASSERT_WDEV_LOCK (struct wireless_dev*) ;
 int EOPNOTSUPP ;
 scalar_t__ NL80211_IFTYPE_OCB ;
 int memset (int *,int ,int) ;
 int rdev_leave_ocb (struct cfg80211_registered_device*,struct net_device*) ;

int __cfg80211_leave_ocb(struct cfg80211_registered_device *rdev,
    struct net_device *dev)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 int err;

 ASSERT_WDEV_LOCK(wdev);

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_OCB)
  return -EOPNOTSUPP;

 if (!rdev->ops->leave_ocb)
  return -EOPNOTSUPP;

 err = rdev_leave_ocb(rdev, dev);
 if (!err)
  memset(&wdev->chandef, 0, sizeof(wdev->chandef));

 return err;
}
