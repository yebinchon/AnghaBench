
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int resuming; scalar_t__ suspended; scalar_t__ quiescing; } ;


 int pr_warn (char*) ;

__attribute__((used)) static bool ieee80211_can_queue_work(struct ieee80211_local *local)
{
 if (local->quiescing || (local->suspended && !local->resuming)) {
  pr_warn("queueing ieee80211 work while going to suspend\n");
  return 0;
 }

 return 1;
}
