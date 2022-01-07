
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cfg80211_registered_device {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EINVAL ;

int cfg80211_validate_beacon_int(struct cfg80211_registered_device *rdev,
     enum nl80211_iftype iftype, u32 beacon_int)
{
 if (beacon_int < 10 || beacon_int > 10000)
  return -EINVAL;

 return 0;
}
