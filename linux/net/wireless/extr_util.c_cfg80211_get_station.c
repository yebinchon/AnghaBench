
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {int wiphy; } ;
struct station_info {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int get_station; } ;


 int EOPNOTSUPP ;
 int memset (struct station_info*,int ,int) ;
 int rdev_get_station (struct cfg80211_registered_device*,struct net_device*,int const*,struct station_info*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

int cfg80211_get_station(struct net_device *dev, const u8 *mac_addr,
    struct station_info *sinfo)
{
 struct cfg80211_registered_device *rdev;
 struct wireless_dev *wdev;

 wdev = dev->ieee80211_ptr;
 if (!wdev)
  return -EOPNOTSUPP;

 rdev = wiphy_to_rdev(wdev->wiphy);
 if (!rdev->ops->get_station)
  return -EOPNOTSUPP;

 memset(sinfo, 0, sizeof(*sinfo));

 return rdev_get_station(rdev, dev, mac_addr, sinfo);
}
