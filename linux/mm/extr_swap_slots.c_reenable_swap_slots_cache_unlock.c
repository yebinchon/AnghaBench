
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __reenable_swap_slots_cache () ;
 int mutex_unlock (int *) ;
 int swap_slots_cache_enable_mutex ;

void reenable_swap_slots_cache_unlock(void)
{
 __reenable_swap_slots_cache();
 mutex_unlock(&swap_slots_cache_enable_mutex);
}
