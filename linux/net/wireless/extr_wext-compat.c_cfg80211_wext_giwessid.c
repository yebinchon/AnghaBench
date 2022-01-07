
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int iftype; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ length; scalar_t__ flags; } ;


 int EOPNOTSUPP ;


 int cfg80211_ibss_wext_giwessid (struct net_device*,struct iw_request_info*,struct iw_point*,char*) ;
 int cfg80211_mgd_wext_giwessid (struct net_device*,struct iw_request_info*,struct iw_point*,char*) ;

__attribute__((used)) static int cfg80211_wext_giwessid(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_point *data, char *ssid)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 data->flags = 0;
 data->length = 0;

 switch (wdev->iftype) {
 case 129:
  return cfg80211_ibss_wext_giwessid(dev, info, data, ssid);
 case 128:
  return cfg80211_mgd_wext_giwessid(dev, info, data, ssid);
 default:
  return -EOPNOTSUPP;
 }
}
