
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int swap_slot_cache_active ;
 int swap_slots_cache_mutex ;

__attribute__((used)) static void reactivate_swap_slots_cache(void)
{
 mutex_lock(&swap_slots_cache_mutex);
 swap_slot_cache_active = 1;
 mutex_unlock(&swap_slots_cache_mutex);
}
