
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int dummy; } ;
struct TYPE_3__ {int sa_data; } ;
struct iw_pmksa {int cmd; int pmkid; TYPE_1__ bssid; } ;
struct cfg80211_registered_device {TYPE_2__* ops; } ;
struct cfg80211_pmksa {int pmkid; int bssid; } ;
struct TYPE_4__ {int flush_pmksa; int del_pmksa; int set_pmksa; } ;


 int EINVAL ;
 int EOPNOTSUPP ;



 scalar_t__ NL80211_IFTYPE_STATION ;
 int memset (struct cfg80211_pmksa*,int ,int) ;
 int rdev_del_pmksa (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_pmksa*) ;
 int rdev_flush_pmksa (struct cfg80211_registered_device*,struct net_device*) ;
 int rdev_set_pmksa (struct cfg80211_registered_device*,struct net_device*,struct cfg80211_pmksa*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

__attribute__((used)) static int cfg80211_wext_siwpmksa(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_point *data, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct cfg80211_pmksa cfg_pmksa;
 struct iw_pmksa *pmksa = (struct iw_pmksa *)extra;

 memset(&cfg_pmksa, 0, sizeof(struct cfg80211_pmksa));

 if (wdev->iftype != NL80211_IFTYPE_STATION)
  return -EINVAL;

 cfg_pmksa.bssid = pmksa->bssid.sa_data;
 cfg_pmksa.pmkid = pmksa->pmkid;

 switch (pmksa->cmd) {
 case 130:
  if (!rdev->ops->set_pmksa)
   return -EOPNOTSUPP;

  return rdev_set_pmksa(rdev, dev, &cfg_pmksa);

 case 128:
  if (!rdev->ops->del_pmksa)
   return -EOPNOTSUPP;

  return rdev_del_pmksa(rdev, dev, &cfg_pmksa);

 case 129:
  if (!rdev->ops->flush_pmksa)
   return -EOPNOTSUPP;

  return rdev_flush_pmksa(rdev, dev);

 default:
  return -EOPNOTSUPP;
 }
}
