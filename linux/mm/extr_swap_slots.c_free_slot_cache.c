
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLOTS_CACHE ;
 int SLOTS_CACHE_RET ;
 int drain_slots_cache_cpu (unsigned int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int swap_slots_cache_mutex ;

__attribute__((used)) static int free_slot_cache(unsigned int cpu)
{
 mutex_lock(&swap_slots_cache_mutex);
 drain_slots_cache_cpu(cpu, SLOTS_CACHE | SLOTS_CACHE_RET, 1);
 mutex_unlock(&swap_slots_cache_mutex);
 return 0;
}
