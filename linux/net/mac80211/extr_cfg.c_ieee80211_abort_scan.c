
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int dummy; } ;
struct wiphy {int dummy; } ;


 int ieee80211_scan_cancel (int ) ;
 int wiphy_priv (struct wiphy*) ;

__attribute__((used)) static void ieee80211_abort_scan(struct wiphy *wiphy, struct wireless_dev *wdev)
{
 ieee80211_scan_cancel(wiphy_priv(wiphy));
}
