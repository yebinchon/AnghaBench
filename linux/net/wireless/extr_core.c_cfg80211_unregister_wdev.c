
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int netdev; } ;


 scalar_t__ WARN_ON (int ) ;
 int __cfg80211_unregister_wdev (struct wireless_dev*,int) ;

void cfg80211_unregister_wdev(struct wireless_dev *wdev)
{
 if (WARN_ON(wdev->netdev))
  return;

 __cfg80211_unregister_wdev(wdev, 1);
}
