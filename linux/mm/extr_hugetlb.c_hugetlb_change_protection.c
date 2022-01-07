
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int swp_entry_t ;
struct vm_area_struct {TYPE_1__* vm_file; struct mm_struct* vm_mm; } ;
struct mmu_notifier_range {unsigned long start; unsigned long end; } ;
struct mm_struct {int dummy; } ;
struct hstate {unsigned long order; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pgprot_t ;
struct TYPE_2__ {int f_mapping; } ;


 int BUG_ON (int) ;
 int MMU_NOTIFY_PROTECTION_VMA ;
 int adjust_range_if_pmd_sharing_possible (struct vm_area_struct*,unsigned long*,unsigned long*) ;
 int arch_make_huge_pte (int ,struct vm_area_struct*,int *,int ) ;
 int flush_cache_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int flush_hugetlb_tlb_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 struct hstate* hstate_vma (struct vm_area_struct*) ;
 scalar_t__ huge_page_size (struct hstate*) ;
 scalar_t__ huge_pmd_unshare (struct mm_struct*,unsigned long*,int *) ;
 int * huge_pte_lock (struct hstate*,struct mm_struct*,int *) ;
 int huge_pte_modify (int ,int ) ;
 int huge_pte_none (int ) ;
 int * huge_pte_offset (struct mm_struct*,unsigned long,scalar_t__) ;
 int huge_ptep_get (int *) ;
 int huge_ptep_modify_prot_commit (struct vm_area_struct*,unsigned long,int *,int ,int ) ;
 int huge_ptep_modify_prot_start (struct vm_area_struct*,unsigned long,int *) ;
 int i_mmap_lock_write (int ) ;
 int i_mmap_unlock_write (int ) ;
 int is_hugetlb_entry_hwpoisoned (int ) ;
 int is_hugetlb_entry_migration (int ) ;
 scalar_t__ is_write_migration_entry (int ) ;
 int make_migration_entry_read (int *) ;
 int mmu_notifier_invalidate_range_end (struct mmu_notifier_range*) ;
 int mmu_notifier_invalidate_range_start (struct mmu_notifier_range*) ;
 int mmu_notifier_range_init (struct mmu_notifier_range*,int ,int ,struct vm_area_struct*,struct mm_struct*,unsigned long,unsigned long) ;
 int pte_mkhuge (int ) ;
 int pte_to_swp_entry (int ) ;
 int set_huge_swap_pte_at (struct mm_struct*,unsigned long,int *,int ,scalar_t__) ;
 int spin_unlock (int *) ;
 int swp_entry_to_pte (int ) ;
 scalar_t__ unlikely (int ) ;

unsigned long hugetlb_change_protection(struct vm_area_struct *vma,
  unsigned long address, unsigned long end, pgprot_t newprot)
{
 struct mm_struct *mm = vma->vm_mm;
 unsigned long start = address;
 pte_t *ptep;
 pte_t pte;
 struct hstate *h = hstate_vma(vma);
 unsigned long pages = 0;
 bool shared_pmd = 0;
 struct mmu_notifier_range range;






 mmu_notifier_range_init(&range, MMU_NOTIFY_PROTECTION_VMA,
    0, vma, mm, start, end);
 adjust_range_if_pmd_sharing_possible(vma, &range.start, &range.end);

 BUG_ON(address >= end);
 flush_cache_range(vma, range.start, range.end);

 mmu_notifier_invalidate_range_start(&range);
 i_mmap_lock_write(vma->vm_file->f_mapping);
 for (; address < end; address += huge_page_size(h)) {
  spinlock_t *ptl;
  ptep = huge_pte_offset(mm, address, huge_page_size(h));
  if (!ptep)
   continue;
  ptl = huge_pte_lock(h, mm, ptep);
  if (huge_pmd_unshare(mm, &address, ptep)) {
   pages++;
   spin_unlock(ptl);
   shared_pmd = 1;
   continue;
  }
  pte = huge_ptep_get(ptep);
  if (unlikely(is_hugetlb_entry_hwpoisoned(pte))) {
   spin_unlock(ptl);
   continue;
  }
  if (unlikely(is_hugetlb_entry_migration(pte))) {
   swp_entry_t entry = pte_to_swp_entry(pte);

   if (is_write_migration_entry(entry)) {
    pte_t newpte;

    make_migration_entry_read(&entry);
    newpte = swp_entry_to_pte(entry);
    set_huge_swap_pte_at(mm, address, ptep,
           newpte, huge_page_size(h));
    pages++;
   }
   spin_unlock(ptl);
   continue;
  }
  if (!huge_pte_none(pte)) {
   pte_t old_pte;

   old_pte = huge_ptep_modify_prot_start(vma, address, ptep);
   pte = pte_mkhuge(huge_pte_modify(old_pte, newprot));
   pte = arch_make_huge_pte(pte, vma, ((void*)0), 0);
   huge_ptep_modify_prot_commit(vma, address, ptep, old_pte, pte);
   pages++;
  }
  spin_unlock(ptl);
 }







 if (shared_pmd)
  flush_hugetlb_tlb_range(vma, range.start, range.end);
 else
  flush_hugetlb_tlb_range(vma, start, end);






 i_mmap_unlock_write(vma->vm_file->f_mapping);
 mmu_notifier_invalidate_range_end(&range);

 return pages << h->order;
}
