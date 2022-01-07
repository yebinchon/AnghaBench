
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;


 int rdev_rfkill_poll (struct cfg80211_registered_device*) ;

__attribute__((used)) static void cfg80211_rfkill_poll(struct rfkill *rfkill, void *data)
{
 struct cfg80211_registered_device *rdev = data;

 rdev_rfkill_poll(rdev);
}
