
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_registered_device {int num_running_ifaces; int num_running_monitor_ifaces; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int ASSERT_RTNL () ;
 int NL80211_IFTYPE_MONITOR ;

void cfg80211_update_iface_num(struct cfg80211_registered_device *rdev,
          enum nl80211_iftype iftype, int num)
{
 ASSERT_RTNL();

 rdev->num_running_ifaces += num;
 if (iftype == NL80211_IFTYPE_MONITOR)
  rdev->num_running_monitor_ifaces += num;
}
