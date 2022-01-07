
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bssid; } ;
struct wireless_dev {scalar_t__ iftype; TYPE_1__ wext; } ;
struct sockaddr {int sa_data; int sa_family; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;


 int ARPHRD_ETHER ;
 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_WDS ;
 scalar_t__ WARN_ON (int) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static int cfg80211_wds_wext_giwap(struct net_device *dev,
       struct iw_request_info *info,
       struct sockaddr *addr, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_WDS))
  return -EINVAL;

 addr->sa_family = ARPHRD_ETHER;
 memcpy(&addr->sa_data, wdev->wext.bssid, ETH_ALEN);

 return 0;
}
