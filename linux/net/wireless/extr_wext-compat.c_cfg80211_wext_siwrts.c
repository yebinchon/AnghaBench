
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct wireless_dev {TYPE_1__* wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {scalar_t__ value; int fixed; scalar_t__ disabled; } ;
struct cfg80211_registered_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ rts_threshold; } ;


 int EINVAL ;
 int WIPHY_PARAM_RTS_THRESHOLD ;
 int rdev_set_wiphy_params (struct cfg80211_registered_device*,int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (TYPE_1__*) ;

int cfg80211_wext_siwrts(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_param *rts, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 u32 orts = wdev->wiphy->rts_threshold;
 int err;

 if (rts->disabled || !rts->fixed)
  wdev->wiphy->rts_threshold = (u32) -1;
 else if (rts->value < 0)
  return -EINVAL;
 else
  wdev->wiphy->rts_threshold = rts->value;

 err = rdev_set_wiphy_params(rdev, WIPHY_PARAM_RTS_THRESHOLD);
 if (err)
  wdev->wiphy->rts_threshold = orts;

 return err;
}
