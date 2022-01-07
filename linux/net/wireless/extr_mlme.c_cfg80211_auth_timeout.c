
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;


 int GFP_KERNEL ;
 int cfg80211_sme_auth_timeout (struct wireless_dev*) ;
 int nl80211_send_auth_timeout (struct cfg80211_registered_device*,struct net_device*,int const*,int ) ;
 int trace_cfg80211_send_auth_timeout (struct net_device*,int const*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_auth_timeout(struct net_device *dev, const u8 *addr)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);

 trace_cfg80211_send_auth_timeout(dev, addr);

 nl80211_send_auth_timeout(rdev, dev, addr, GFP_KERNEL);
 cfg80211_sme_auth_timeout(wdev);
}
