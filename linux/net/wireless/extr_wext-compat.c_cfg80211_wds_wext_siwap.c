
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int bssid; } ;
struct wireless_dev {scalar_t__ iftype; TYPE_2__ wext; int wiphy; } ;
struct sockaddr {scalar_t__ sa_family; int sa_data; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_3__ {int set_wds_peer; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_WDS ;
 scalar_t__ WARN_ON (int) ;
 int memcpy (int *,int *,int ) ;
 scalar_t__ netif_running (struct net_device*) ;
 int rdev_set_wds_peer (struct cfg80211_registered_device*,struct net_device*,int *) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static int cfg80211_wds_wext_siwap(struct net_device *dev,
       struct iw_request_info *info,
       struct sockaddr *addr, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 int err;

 if (WARN_ON(wdev->iftype != NL80211_IFTYPE_WDS))
  return -EINVAL;

 if (addr->sa_family != ARPHRD_ETHER)
  return -EINVAL;

 if (netif_running(dev))
  return -EBUSY;

 if (!rdev->ops->set_wds_peer)
  return -EOPNOTSUPP;

 err = rdev_set_wds_peer(rdev, dev, (u8 *)&addr->sa_data);
 if (err)
  return err;

 memcpy(&wdev->wext.bssid, (u8 *) &addr->sa_data, ETH_ALEN);

 return 0;
}
