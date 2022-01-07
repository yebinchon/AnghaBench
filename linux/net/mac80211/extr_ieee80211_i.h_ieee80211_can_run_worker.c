
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {scalar_t__ suspended; scalar_t__ quiescing; scalar_t__ in_reconfig; } ;



__attribute__((used)) static inline bool ieee80211_can_run_worker(struct ieee80211_local *local)
{




 if (local->in_reconfig)
  return 0;







 if (local->quiescing)
  return 0;
 if (local->suspended)
  return 0;

 return 1;
}
