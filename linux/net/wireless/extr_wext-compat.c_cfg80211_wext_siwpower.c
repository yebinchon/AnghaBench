
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int ps; int ps_timeout; scalar_t__ iftype; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; int value; scalar_t__ disabled; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int set_power_mgmt; } ;


 int EINVAL ;
 int EOPNOTSUPP ;



 int IW_POWER_TIMEOUT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int rdev_set_power_mgmt (struct cfg80211_registered_device*,struct net_device*,int,int) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static int cfg80211_wext_siwpower(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_param *wrq, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 bool ps = wdev->ps;
 int timeout = wdev->ps_timeout;
 int err;

 if (wdev->iftype != NL80211_IFTYPE_STATION)
  return -EINVAL;

 if (!rdev->ops->set_power_mgmt)
  return -EOPNOTSUPP;

 if (wrq->disabled) {
  ps = 0;
 } else {
  switch (wrq->flags & 129) {
  case 128:
  case 129:
  case 130:
   ps = 1;
   break;
  default:
   return -EINVAL;
  }

  if (wrq->flags & ~(129 | IW_POWER_TIMEOUT))
   return -EINVAL;

  if (wrq->flags & IW_POWER_TIMEOUT)
   timeout = wrq->value / 1000;
 }

 err = rdev_set_power_mgmt(rdev, dev, ps, timeout);
 if (err)
  return err;

 wdev->ps = ps;
 wdev->ps_timeout = timeout;

 return 0;

}
