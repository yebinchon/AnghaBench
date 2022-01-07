
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * bssid; } ;
struct TYPE_4__ {TYPE_1__ connect; int * bssid; } ;
struct wireless_dev {scalar_t__ iftype; TYPE_2__ wext; scalar_t__ conn; int wiphy; } ;
struct sockaddr {scalar_t__ sa_family; int * sa_data; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON (int) ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int cfg80211_disconnect (struct cfg80211_registered_device*,struct net_device*,int ,int) ;
 int cfg80211_mgd_wext_connect (struct cfg80211_registered_device*,struct wireless_dev*) ;
 scalar_t__ ether_addr_equal (int *,int *) ;
 scalar_t__ is_broadcast_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int memcpy (int *,int *,int ) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

int cfg80211_mgd_wext_siwap(struct net_device *dev,
       struct iw_request_info *info,
       struct sockaddr *ap_addr, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 u8 *bssid = ap_addr->sa_data;
 int err;


 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_STATION))
  return -EINVAL;

 if (ap_addr->sa_family != ARPHRD_ETHER)
  return -EINVAL;


 if (is_zero_ether_addr(bssid) || is_broadcast_ether_addr(bssid))
  bssid = ((void*)0);

 wdev_lock(wdev);

 if (wdev->conn) {
  err = 0;

  if (!bssid && !wdev->wext.connect.bssid)
   goto out;


  if (wdev->wext.connect.bssid && bssid &&
      ether_addr_equal(bssid, wdev->wext.connect.bssid))
   goto out;

  err = cfg80211_disconnect(rdev, dev,
       WLAN_REASON_DEAUTH_LEAVING, 0);
  if (err)
   goto out;
 }

 if (bssid) {
  memcpy(wdev->wext.bssid, bssid, ETH_ALEN);
  wdev->wext.connect.bssid = wdev->wext.bssid;
 } else
  wdev->wext.connect.bssid = ((void*)0);

 err = cfg80211_mgd_wext_connect(rdev, wdev);
 out:
 wdev_unlock(wdev);
 return err;
}
