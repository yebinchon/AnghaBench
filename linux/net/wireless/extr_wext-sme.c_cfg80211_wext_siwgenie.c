
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
struct TYPE_2__ {int ie_len; char* ie; } ;
struct wireless_dev {scalar_t__ iftype; scalar_t__ conn; TYPE_1__ wext; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct cfg80211_registered_device {int dummy; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int cfg80211_disconnect (struct cfg80211_registered_device*,struct net_device*,int ,int) ;
 int kfree (char*) ;
 char* kmemdup (char*,int,int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

int cfg80211_wext_siwgenie(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_point *data, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 u8 *ie = extra;
 int ie_len = data->length, err;

 if (wdev->iftype != NL80211_IFTYPE_STATION)
  return -EOPNOTSUPP;

 if (!ie_len)
  ie = ((void*)0);

 wdev_lock(wdev);


 err = 0;
 if (wdev->wext.ie_len == ie_len &&
     memcmp(wdev->wext.ie, ie, ie_len) == 0)
  goto out;

 if (ie_len) {
  ie = kmemdup(extra, ie_len, GFP_KERNEL);
  if (!ie) {
   err = -ENOMEM;
   goto out;
  }
 } else
  ie = ((void*)0);

 kfree(wdev->wext.ie);
 wdev->wext.ie = ie;
 wdev->wext.ie_len = ie_len;

 if (wdev->conn) {
  err = cfg80211_disconnect(rdev, dev,
       WLAN_REASON_DEAUTH_LEAVING, 0);
  if (err)
   goto out;
 }


 err = 0;
 out:
 wdev_unlock(wdev);
 return err;
}
