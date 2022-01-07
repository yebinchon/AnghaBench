
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* cur_cmd_info; } ;
struct TYPE_2__ {unsigned int snd_portid; } ;


 scalar_t__ WARN_ON (int) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

unsigned int cfg80211_vendor_cmd_get_sender(struct wiphy *wiphy)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);

 if (WARN_ON(!rdev->cur_cmd_info))
  return 0;

 return rdev->cur_cmd_info->snd_portid;
}
