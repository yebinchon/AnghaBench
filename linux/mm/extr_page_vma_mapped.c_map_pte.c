
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int swp_entry_t ;
struct page_vma_mapped_walk {int flags; int ptl; int pmd; TYPE_1__* vma; int * pte; int address; } ;
struct TYPE_2__ {int vm_mm; } ;


 int PVMW_MIGRATION ;
 int PVMW_SYNC ;
 int is_device_private_entry (int ) ;
 scalar_t__ is_swap_pte (int ) ;
 int pte_lockptr (int ,int ) ;
 int * pte_offset_map (int ,int ) ;
 int pte_present (int ) ;
 int pte_to_swp_entry (int ) ;
 int spin_lock (int ) ;

__attribute__((used)) static bool map_pte(struct page_vma_mapped_walk *pvmw)
{
 pvmw->pte = pte_offset_map(pvmw->pmd, pvmw->address);
 if (!(pvmw->flags & PVMW_SYNC)) {
  if (pvmw->flags & PVMW_MIGRATION) {
   if (!is_swap_pte(*pvmw->pte))
    return 0;
  } else {
   if (is_swap_pte(*pvmw->pte)) {
    swp_entry_t entry;


    entry = pte_to_swp_entry(*pvmw->pte);
    if (!is_device_private_entry(entry))
     return 0;
   } else if (!pte_present(*pvmw->pte))
    return 0;
  }
 }
 pvmw->ptl = pte_lockptr(pvmw->vma->vm_mm, pvmw->pmd);
 spin_lock(pvmw->ptl);
 return 1;
}
