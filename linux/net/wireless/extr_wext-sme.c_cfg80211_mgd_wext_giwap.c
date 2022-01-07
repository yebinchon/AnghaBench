
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; TYPE_1__* current_bss; } ;
struct sockaddr {int sa_data; int sa_family; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {int bssid; } ;
struct TYPE_3__ {TYPE_2__ pub; } ;


 int ARPHRD_ETHER ;
 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ WARN_ON (int) ;
 int eth_zero_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

int cfg80211_mgd_wext_giwap(struct net_device *dev,
       struct iw_request_info *info,
       struct sockaddr *ap_addr, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;


 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_STATION))
  return -EINVAL;

 ap_addr->sa_family = ARPHRD_ETHER;

 wdev_lock(wdev);
 if (wdev->current_bss)
  memcpy(ap_addr->sa_data, wdev->current_bss->pub.bssid, ETH_ALEN);
 else
  eth_zero_addr(ap_addr->sa_data);
 wdev_unlock(wdev);

 return 0;
}
