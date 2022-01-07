
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int swp_entry_t ;
struct vm_area_struct {int vm_flags; TYPE_1__* vm_mm; } ;
struct page {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;
struct TYPE_4__ {int mm_users; } ;


 int CONFIG_MIGRATION ;
 scalar_t__ IS_ENABLED (int ) ;
 int NUMA_NO_NODE ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PageDirty (struct page*) ;
 scalar_t__ PageKsm (struct page*) ;
 int VM_SHARED ;
 int VM_SOFTDIRTY ;
 int arch_enter_lazy_mmu_mode () ;
 int arch_leave_lazy_mmu_mode () ;
 int atomic_read (int *) ;
 int flush_tlb_batched_pending (TYPE_1__*) ;
 scalar_t__ is_cow_mapping (int) ;
 scalar_t__ is_write_device_private_entry (int ) ;
 scalar_t__ is_write_migration_entry (int ) ;
 int make_device_private_entry_read (int *) ;
 int make_migration_entry_read (int *) ;
 int numa_node_id () ;
 scalar_t__ page_is_file_cache (struct page*) ;
 int page_mapcount (struct page*) ;
 int page_to_nid (struct page*) ;
 scalar_t__ pmd_trans_unstable (int *) ;
 scalar_t__ pte_dirty (int ) ;
 int pte_mk_savedwrite (int ) ;
 int pte_mkwrite (int ) ;
 int pte_modify (int ,int ) ;
 int * pte_offset_map_lock (TYPE_1__*,int *,unsigned long,int **) ;
 scalar_t__ pte_present (int ) ;
 scalar_t__ pte_protnone (int ) ;
 scalar_t__ pte_soft_dirty (int ) ;
 int pte_swp_mksoft_dirty (int ) ;
 scalar_t__ pte_swp_soft_dirty (int ) ;
 int pte_to_swp_entry (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 scalar_t__ pte_write (int ) ;
 int ptep_modify_prot_commit (struct vm_area_struct*,unsigned long,int *,int ,int ) ;
 int ptep_modify_prot_start (struct vm_area_struct*,unsigned long,int *) ;
 int set_pte_at (TYPE_1__*,unsigned long,int *,int ) ;
 int swp_entry_to_pte (int ) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static unsigned long change_pte_range(struct vm_area_struct *vma, pmd_t *pmd,
  unsigned long addr, unsigned long end, pgprot_t newprot,
  int dirty_accountable, int prot_numa)
{
 pte_t *pte, oldpte;
 spinlock_t *ptl;
 unsigned long pages = 0;
 int target_node = NUMA_NO_NODE;







 if (pmd_trans_unstable(pmd))
  return 0;






 pte = pte_offset_map_lock(vma->vm_mm, pmd, addr, &ptl);


 if (prot_numa && !(vma->vm_flags & VM_SHARED) &&
     atomic_read(&vma->vm_mm->mm_users) == 1)
  target_node = numa_node_id();

 flush_tlb_batched_pending(vma->vm_mm);
 arch_enter_lazy_mmu_mode();
 do {
  oldpte = *pte;
  if (pte_present(oldpte)) {
   pte_t ptent;
   bool preserve_write = prot_numa && pte_write(oldpte);





   if (prot_numa) {
    struct page *page;

    page = vm_normal_page(vma, addr, oldpte);
    if (!page || PageKsm(page))
     continue;


    if (is_cow_mapping(vma->vm_flags) &&
        page_mapcount(page) != 1)
     continue;






    if (page_is_file_cache(page) && PageDirty(page))
     continue;


    if (pte_protnone(oldpte))
     continue;





    if (target_node == page_to_nid(page))
     continue;
   }

   oldpte = ptep_modify_prot_start(vma, addr, pte);
   ptent = pte_modify(oldpte, newprot);
   if (preserve_write)
    ptent = pte_mk_savedwrite(ptent);


   if (dirty_accountable && pte_dirty(ptent) &&
     (pte_soft_dirty(ptent) ||
      !(vma->vm_flags & VM_SOFTDIRTY))) {
    ptent = pte_mkwrite(ptent);
   }
   ptep_modify_prot_commit(vma, addr, pte, oldpte, ptent);
   pages++;
  } else if (IS_ENABLED(CONFIG_MIGRATION)) {
   swp_entry_t entry = pte_to_swp_entry(oldpte);

   if (is_write_migration_entry(entry)) {
    pte_t newpte;




    make_migration_entry_read(&entry);
    newpte = swp_entry_to_pte(entry);
    if (pte_swp_soft_dirty(oldpte))
     newpte = pte_swp_mksoft_dirty(newpte);
    set_pte_at(vma->vm_mm, addr, pte, newpte);

    pages++;
   }

   if (is_write_device_private_entry(entry)) {
    pte_t newpte;





    make_device_private_entry_read(&entry);
    newpte = swp_entry_to_pte(entry);
    set_pte_at(vma->vm_mm, addr, pte, newpte);

    pages++;
   }
  }
 } while (pte++, addr += PAGE_SIZE, addr != end);
 arch_leave_lazy_mmu_mode();
 pte_unmap_unlock(pte - 1, ptl);

 return pages;
}
