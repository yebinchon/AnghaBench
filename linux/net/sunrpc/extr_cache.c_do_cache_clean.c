
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int HZ ;
 int cache_clean () ;
 int cache_cleaner ;
 int cache_list ;
 scalar_t__ list_empty (int *) ;
 int queue_delayed_work (int ,int *,int) ;
 int round_jiffies_relative (int) ;
 int system_power_efficient_wq ;

__attribute__((used)) static void do_cache_clean(struct work_struct *work)
{
 int delay = 5;
 if (cache_clean() == -1)
  delay = round_jiffies_relative(30*HZ);

 if (list_empty(&cache_list))
  delay = 0;

 if (delay)
  queue_delayed_work(system_power_efficient_wq,
       &cache_cleaner, delay);
}
