
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;


 int IEEE80211_WDEV_TO_SUB_IF (struct wireless_dev*) ;
 int ieee80211_if_remove (int ) ;

__attribute__((used)) static int ieee80211_del_iface(struct wiphy *wiphy, struct wireless_dev *wdev)
{
 ieee80211_if_remove(IEEE80211_WDEV_TO_SUB_IF(wdev));

 return 0;
}
