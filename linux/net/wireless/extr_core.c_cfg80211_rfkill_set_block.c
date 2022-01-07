
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfg80211_registered_device {int wiphy; } ;


 int cfg80211_shutdown_all_interfaces (int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int cfg80211_rfkill_set_block(void *data, bool blocked)
{
 struct cfg80211_registered_device *rdev = data;

 if (!blocked)
  return 0;

 rtnl_lock();
 cfg80211_shutdown_all_interfaces(&rdev->wiphy);
 rtnl_unlock();

 return 0;
}
