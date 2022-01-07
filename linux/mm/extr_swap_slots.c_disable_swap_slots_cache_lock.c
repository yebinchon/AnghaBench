
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLOTS_CACHE ;
 int SLOTS_CACHE_RET ;
 int __drain_swap_slots_cache (int) ;
 int get_online_cpus () ;
 int mutex_lock (int *) ;
 int put_online_cpus () ;
 int swap_slot_cache_enabled ;
 scalar_t__ swap_slot_cache_initialized ;
 int swap_slots_cache_enable_mutex ;

void disable_swap_slots_cache_lock(void)
{
 mutex_lock(&swap_slots_cache_enable_mutex);
 swap_slot_cache_enabled = 0;
 if (swap_slot_cache_initialized) {

  get_online_cpus();
  __drain_swap_slots_cache(SLOTS_CACHE|SLOTS_CACHE_RET);
  put_online_cpus();
 }
}
