
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {struct wiphy* wiphy; } ;
struct wiphy {int dummy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_bss {int dummy; } ;


 int bss_from_pub (struct cfg80211_bss*) ;
 int cfg80211_put_bss (struct wiphy*,struct cfg80211_bss*) ;
 int cfg80211_sme_abandon_assoc (struct wireless_dev*) ;
 int cfg80211_unhold_bss (int ) ;

void cfg80211_abandon_assoc(struct net_device *dev, struct cfg80211_bss *bss)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct wiphy *wiphy = wdev->wiphy;

 cfg80211_sme_abandon_assoc(wdev);

 cfg80211_unhold_bss(bss_from_pub(bss));
 cfg80211_put_bss(wiphy, bss);
}
