
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {TYPE_1__* wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int flags; scalar_t__ value; scalar_t__ disabled; } ;
struct TYPE_2__ {scalar_t__ retry_short; scalar_t__ retry_long; } ;


 int IW_RETRY_LIMIT ;
 int IW_RETRY_LONG ;
 int IW_RETRY_SHORT ;

int cfg80211_wext_giwretry(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_param *retry, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 retry->disabled = 0;

 if (retry->flags == 0 || (retry->flags & IW_RETRY_SHORT)) {




  retry->flags |= IW_RETRY_LIMIT | IW_RETRY_SHORT;
  retry->value = wdev->wiphy->retry_short;
  if (wdev->wiphy->retry_long == wdev->wiphy->retry_short)
   retry->flags |= IW_RETRY_LONG;

  return 0;
 }

 if (retry->flags & IW_RETRY_LONG) {
  retry->flags = IW_RETRY_LIMIT | IW_RETRY_LONG;
  retry->value = wdev->wiphy->retry_long;
 }

 return 0;
}
