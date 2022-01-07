
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long THRESHOLD_ACTIVATE_SWAP_SLOTS_CACHE ;
 long THRESHOLD_DEACTIVATE_SWAP_SLOTS_CACHE ;
 int deactivate_swap_slots_cache () ;
 long get_nr_swap_pages () ;
 long num_online_cpus () ;
 int reactivate_swap_slots_cache () ;
 int swap_slot_cache_active ;
 int swap_slot_cache_enabled ;
 int swap_slot_cache_initialized ;

__attribute__((used)) static bool check_cache_active(void)
{
 long pages;

 if (!swap_slot_cache_enabled || !swap_slot_cache_initialized)
  return 0;

 pages = get_nr_swap_pages();
 if (!swap_slot_cache_active) {
  if (pages > num_online_cpus() *
      THRESHOLD_ACTIVATE_SWAP_SLOTS_CACHE)
   reactivate_swap_slots_cache();
  goto out;
 }


 if (pages < num_online_cpus() * THRESHOLD_DEACTIVATE_SWAP_SLOTS_CACHE)
  deactivate_swap_slots_cache();
out:
 return swap_slot_cache_active;
}
