
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
typedef int gfp_t ;


 int nl80211_gtk_rekey_notify (struct cfg80211_registered_device*,struct net_device*,int const*,int const*,int ) ;
 int trace_cfg80211_gtk_rekey_notify (struct net_device*,int const*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_gtk_rekey_notify(struct net_device *dev, const u8 *bssid,
          const u8 *replay_ctr, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);

 trace_cfg80211_gtk_rekey_notify(dev, bssid);
 nl80211_gtk_rekey_notify(rdev, dev, bssid, replay_ctr, gfp);
}
