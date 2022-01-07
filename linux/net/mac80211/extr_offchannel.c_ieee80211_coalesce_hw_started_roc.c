
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_roc_work {int hw_begun; scalar_t__ duration; unsigned long start_time; int list; int started; } ;
struct ieee80211_local {int dummy; } ;


 scalar_t__ WARN_ON (int) ;
 int ieee80211_handle_roc_started (struct ieee80211_roc_work*,unsigned long) ;
 unsigned long jiffies ;
 scalar_t__ jiffies_to_msecs (unsigned long) ;
 int list_add (int *,int *) ;
 unsigned long msecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static bool
ieee80211_coalesce_hw_started_roc(struct ieee80211_local *local,
      struct ieee80211_roc_work *new_roc,
      struct ieee80211_roc_work *cur_roc)
{
 unsigned long now = jiffies;
 unsigned long remaining;

 if (WARN_ON(!cur_roc->started))
  return 0;




 if (!cur_roc->hw_begun && new_roc->duration > cur_roc->duration)
  return 0;

 remaining = cur_roc->start_time +
      msecs_to_jiffies(cur_roc->duration) -
      now;


 if (new_roc->duration > jiffies_to_msecs(remaining))
  return 0;


 list_add(&new_roc->list, &cur_roc->list);





 if (cur_roc->hw_begun) {
  new_roc->hw_begun = 1;
  ieee80211_handle_roc_started(new_roc, now);
 }

 return 1;
}
