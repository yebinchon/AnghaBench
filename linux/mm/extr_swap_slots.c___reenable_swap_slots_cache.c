
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int has_usable_swap () ;
 int swap_slot_cache_enabled ;

__attribute__((used)) static void __reenable_swap_slots_cache(void)
{
 swap_slot_cache_enabled = has_usable_swap();
}
