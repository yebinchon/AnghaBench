
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pte_to_swp_entry (int ) ;
 int swp_entry (int ,unsigned long) ;
 int swp_entry_to_pte (int ) ;
 unsigned long swp_offset (int ) ;

unsigned long generic_max_swapfile_size(void)
{
 return swp_offset(pte_to_swp_entry(
   swp_entry_to_pte(swp_entry(0, ~0UL)))) + 1;
}
