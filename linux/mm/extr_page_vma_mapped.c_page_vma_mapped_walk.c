
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int swp_entry_t ;
struct page_vma_mapped_walk {int address; int flags; int * ptl; int * pmd; int * pte; struct page* page; TYPE_1__* vma; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;
struct TYPE_2__ {int vm_end; struct mm_struct* vm_mm; } ;


 int PAGE_SIZE ;
 int PMD_SIZE ;
 int PVMW_MIGRATION ;
 scalar_t__ PageHuge (struct page*) ;
 int PageTransHuge (struct page*) ;
 int READ_ONCE (int ) ;
 int __vma_address (struct page*,TYPE_1__*) ;
 scalar_t__ check_pte (struct page_vma_mapped_walk*) ;
 int hpage_nr_pages (struct page*) ;
 int * huge_pte_lockptr (int ,struct mm_struct*,int *) ;
 int * huge_pte_offset (struct mm_struct*,int,int ) ;
 scalar_t__ is_migration_entry (int ) ;
 scalar_t__ is_pmd_migration_entry (int ) ;
 scalar_t__ likely (scalar_t__) ;
 int map_pte (struct page_vma_mapped_walk*) ;
 struct page* migration_entry_to_page (int ) ;
 int not_found (struct page_vma_mapped_walk*) ;
 int * p4d_offset (int *,int) ;
 int p4d_present (int ) ;
 int page_hstate (struct page*) ;
 int page_size (struct page*) ;
 int * pgd_offset (struct mm_struct*,int) ;
 int pgd_present (int ) ;
 int * pmd_lock (struct mm_struct*,int *) ;
 int * pmd_offset (int *,int) ;
 struct page* pmd_page (int ) ;
 int pmd_present (int ) ;
 int pmd_to_swp_entry (int ) ;
 scalar_t__ pmd_trans_huge (int ) ;
 int * pte_lockptr (struct mm_struct*,int *) ;
 scalar_t__ pte_none (int ) ;
 int pte_unmap (int *) ;
 int * pud_offset (int *,int) ;
 int pud_present (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ thp_migration_supported () ;
 scalar_t__ unlikely (scalar_t__) ;

bool page_vma_mapped_walk(struct page_vma_mapped_walk *pvmw)
{
 struct mm_struct *mm = pvmw->vma->vm_mm;
 struct page *page = pvmw->page;
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t pmde;


 if (pvmw->pmd && !pvmw->pte)
  return not_found(pvmw);

 if (pvmw->pte)
  goto next_pte;

 if (unlikely(PageHuge(pvmw->page))) {

  pvmw->pte = huge_pte_offset(mm, pvmw->address, page_size(page));
  if (!pvmw->pte)
   return 0;

  pvmw->ptl = huge_pte_lockptr(page_hstate(page), mm, pvmw->pte);
  spin_lock(pvmw->ptl);
  if (!check_pte(pvmw))
   return not_found(pvmw);
  return 1;
 }
restart:
 pgd = pgd_offset(mm, pvmw->address);
 if (!pgd_present(*pgd))
  return 0;
 p4d = p4d_offset(pgd, pvmw->address);
 if (!p4d_present(*p4d))
  return 0;
 pud = pud_offset(p4d, pvmw->address);
 if (!pud_present(*pud))
  return 0;
 pvmw->pmd = pmd_offset(pud, pvmw->address);





 pmde = READ_ONCE(*pvmw->pmd);
 if (pmd_trans_huge(pmde) || is_pmd_migration_entry(pmde)) {
  pvmw->ptl = pmd_lock(mm, pvmw->pmd);
  if (likely(pmd_trans_huge(*pvmw->pmd))) {
   if (pvmw->flags & PVMW_MIGRATION)
    return not_found(pvmw);
   if (pmd_page(*pvmw->pmd) != page)
    return not_found(pvmw);
   return 1;
  } else if (!pmd_present(*pvmw->pmd)) {
   if (thp_migration_supported()) {
    if (!(pvmw->flags & PVMW_MIGRATION))
     return not_found(pvmw);
    if (is_migration_entry(pmd_to_swp_entry(*pvmw->pmd))) {
     swp_entry_t entry = pmd_to_swp_entry(*pvmw->pmd);

     if (migration_entry_to_page(entry) != page)
      return not_found(pvmw);
     return 1;
    }
   }
   return not_found(pvmw);
  } else {

   spin_unlock(pvmw->ptl);
   pvmw->ptl = ((void*)0);
  }
 } else if (!pmd_present(pmde)) {
  return 0;
 }
 if (!map_pte(pvmw))
  goto next_pte;
 while (1) {
  if (check_pte(pvmw))
   return 1;
next_pte:

  if (!PageTransHuge(pvmw->page) || PageHuge(pvmw->page))
   return not_found(pvmw);
  do {
   pvmw->address += PAGE_SIZE;
   if (pvmw->address >= pvmw->vma->vm_end ||
       pvmw->address >=
     __vma_address(pvmw->page, pvmw->vma) +
     hpage_nr_pages(pvmw->page) * PAGE_SIZE)
    return not_found(pvmw);

   if (pvmw->address % PMD_SIZE == 0) {
    pte_unmap(pvmw->pte);
    if (pvmw->ptl) {
     spin_unlock(pvmw->ptl);
     pvmw->ptl = ((void*)0);
    }
    goto restart;
   } else {
    pvmw->pte++;
   }
  } while (pte_none(*pvmw->pte));

  if (!pvmw->ptl) {
   pvmw->ptl = pte_lockptr(mm, pvmw->pmd);
   spin_lock(pvmw->ptl);
  }
 }
}
