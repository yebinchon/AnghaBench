
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_registered_device {int dummy; } ;


 scalar_t__ IEEE80211_SCAN_RESULT_EXPIRE ;
 int __cfg80211_bss_expire (struct cfg80211_registered_device*,scalar_t__) ;
 scalar_t__ jiffies ;

void cfg80211_bss_expire(struct cfg80211_registered_device *rdev)
{
 __cfg80211_bss_expire(rdev, jiffies - IEEE80211_SCAN_RESULT_EXPIRE);
}
