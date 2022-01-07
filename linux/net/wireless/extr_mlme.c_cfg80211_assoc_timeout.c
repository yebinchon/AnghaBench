
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int dummy; } ;
struct cfg80211_bss {int bssid; } ;


 int GFP_KERNEL ;
 int bss_from_pub (struct cfg80211_bss*) ;
 int cfg80211_put_bss (struct wiphy*,struct cfg80211_bss*) ;
 int cfg80211_sme_assoc_timeout (struct wireless_dev*) ;
 int cfg80211_unhold_bss (int ) ;
 int nl80211_send_assoc_timeout (struct cfg80211_registered_device*,struct net_device*,int ,int ) ;
 int trace_cfg80211_send_assoc_timeout (struct net_device*,int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_assoc_timeout(struct net_device *dev, struct cfg80211_bss *bss)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);

 trace_cfg80211_send_assoc_timeout(dev, bss->bssid);

 nl80211_send_assoc_timeout(rdev, dev, bss->bssid, GFP_KERNEL);
 cfg80211_sme_assoc_timeout(wdev);

 cfg80211_unhold_bss(bss_from_pub(bss));
 cfg80211_put_bss(wiphy, bss);
}
