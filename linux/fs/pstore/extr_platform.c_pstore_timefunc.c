
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 scalar_t__ pstore_new_entry ;
 int pstore_timer ;
 scalar_t__ pstore_update_ms ;
 int pstore_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void pstore_timefunc(struct timer_list *unused)
{
 if (pstore_new_entry) {
  pstore_new_entry = 0;
  schedule_work(&pstore_work);
 }

 if (pstore_update_ms >= 0)
  mod_timer(&pstore_timer,
     jiffies + msecs_to_jiffies(pstore_update_ms));
}
