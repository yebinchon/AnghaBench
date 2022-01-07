
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int rfkill; } ;


 int rfkill_pause_polling (int ) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void wiphy_rfkill_stop_polling(struct wiphy *wiphy)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);

 rfkill_pause_polling(rdev->rfkill);
}
