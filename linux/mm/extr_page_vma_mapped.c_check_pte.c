
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct page_vma_mapped_walk {int flags; int page; int * pte; } ;


 int PVMW_MIGRATION ;
 unsigned long device_private_entry_to_pfn (int ) ;
 int is_device_private_entry (int ) ;
 int is_migration_entry (int ) ;
 scalar_t__ is_swap_pte (int ) ;
 unsigned long migration_entry_to_pfn (int ) ;
 int pfn_in_hpage (int ,unsigned long) ;
 unsigned long pte_pfn (int ) ;
 int pte_present (int ) ;
 int pte_to_swp_entry (int ) ;

__attribute__((used)) static bool check_pte(struct page_vma_mapped_walk *pvmw)
{
 unsigned long pfn;

 if (pvmw->flags & PVMW_MIGRATION) {
  swp_entry_t entry;
  if (!is_swap_pte(*pvmw->pte))
   return 0;
  entry = pte_to_swp_entry(*pvmw->pte);

  if (!is_migration_entry(entry))
   return 0;

  pfn = migration_entry_to_pfn(entry);
 } else if (is_swap_pte(*pvmw->pte)) {
  swp_entry_t entry;


  entry = pte_to_swp_entry(*pvmw->pte);
  if (!is_device_private_entry(entry))
   return 0;

  pfn = device_private_entry_to_pfn(entry);
 } else {
  if (!pte_present(*pvmw->pte))
   return 0;

  pfn = pte_pfn(*pvmw->pte);
 }

 return pfn_in_hpage(pvmw->page, pfn);
}
