
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {unsigned long vm_start; scalar_t__ vm_end; int vm_page_prot; struct mm_struct* vm_mm; } ;
struct page {int _mapcount; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgtable_t ;


 int BUG_ON (int) ;
 unsigned long HPAGE_PMD_MASK ;
 int HPAGE_PMD_NR ;
 scalar_t__ HPAGE_PMD_SIZE ;
 int NR_ANON_THPS ;
 scalar_t__ PAGE_SIZE ;
 int PageDirty (struct page*) ;
 int PageReferenced (struct page*) ;
 int READ_ONCE (int ) ;
 int SetPageDirty (struct page*) ;
 int SetPageReferenced (struct page*) ;
 int THP_SPLIT_PMD ;
 scalar_t__ TestClearPageDoubleMap (struct page*) ;
 int TestSetPageDoubleMap (struct page*) ;
 int VM_BUG_ON (int) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int VM_BUG_ON_VMA (int,struct vm_area_struct*) ;
 int __dec_node_page_state (struct page*,int ) ;
 void __split_huge_zero_page_pmd (struct vm_area_struct*,unsigned long,int *) ;
 int add_mm_counter (struct mm_struct*,int ,int) ;
 scalar_t__ arch_needs_pgtable_deposit () ;
 scalar_t__ atomic_add_negative (int,int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int compound_mapcount (struct page*) ;
 int compound_mapcount_ptr (struct page*) ;
 int count_vm_event (int ) ;
 scalar_t__ is_huge_zero_pmd (int ) ;
 int is_pmd_migration_entry (int ) ;
 int is_write_migration_entry (int ) ;
 int make_migration_entry (struct page*,int) ;
 int maybe_mkwrite (int ,struct vm_area_struct*) ;
 int mk_pte (struct page*,int ) ;
 int mm_counter_file (struct page*) ;
 int page_count (struct page*) ;
 int page_ref_add (struct page*,int) ;
 int page_remove_rmap (struct page*,int) ;
 struct page* pfn_to_page (int ) ;
 int pgtable_trans_huge_withdraw (struct mm_struct*,int *) ;
 int pmd_devmap (int ) ;
 scalar_t__ pmd_dirty (int ) ;
 struct page* pmd_page (int ) ;
 int pmd_populate (struct mm_struct*,int *,int ) ;
 int pmd_soft_dirty (int ) ;
 int pmd_swp_soft_dirty (int ) ;
 int pmd_to_swp_entry (int ) ;
 int pmd_trans_huge (int ) ;
 int pmd_write (int ) ;
 int pmd_young (int ) ;
 int pmdp_huge_clear_flush_notify (struct vm_area_struct*,unsigned long,int *) ;
 int pmdp_invalidate (struct vm_area_struct*,unsigned long,int *) ;
 int pte_mkold (int ) ;
 int pte_mksoft_dirty (int ) ;
 int pte_none (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_swp_mksoft_dirty (int ) ;
 int pte_unmap (int *) ;
 int pte_wrprotect (int ) ;
 int put_page (struct page*) ;
 int set_page_dirty (struct page*) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int smp_wmb () ;
 int swp_entry_to_pte (int ) ;
 int swp_offset (int ) ;
 scalar_t__ unlikely (int) ;
 int vma_is_anonymous (struct vm_area_struct*) ;
 scalar_t__ vma_is_dax (struct vm_area_struct*) ;
 int zap_deposited_table (struct mm_struct*,int *) ;

__attribute__((used)) static void __split_huge_pmd_locked(struct vm_area_struct *vma, pmd_t *pmd,
  unsigned long haddr, bool freeze)
{
 struct mm_struct *mm = vma->vm_mm;
 struct page *page;
 pgtable_t pgtable;
 pmd_t old_pmd, _pmd;
 bool young, write, soft_dirty, pmd_migration = 0;
 unsigned long addr;
 int i;

 VM_BUG_ON(haddr & ~HPAGE_PMD_MASK);
 VM_BUG_ON_VMA(vma->vm_start > haddr, vma);
 VM_BUG_ON_VMA(vma->vm_end < haddr + HPAGE_PMD_SIZE, vma);
 VM_BUG_ON(!is_pmd_migration_entry(*pmd) && !pmd_trans_huge(*pmd)
    && !pmd_devmap(*pmd));

 count_vm_event(THP_SPLIT_PMD);

 if (!vma_is_anonymous(vma)) {
  _pmd = pmdp_huge_clear_flush_notify(vma, haddr, pmd);




  if (arch_needs_pgtable_deposit())
   zap_deposited_table(mm, pmd);
  if (vma_is_dax(vma))
   return;
  page = pmd_page(_pmd);
  if (!PageDirty(page) && pmd_dirty(_pmd))
   set_page_dirty(page);
  if (!PageReferenced(page) && pmd_young(_pmd))
   SetPageReferenced(page);
  page_remove_rmap(page, 1);
  put_page(page);
  add_mm_counter(mm, mm_counter_file(page), -HPAGE_PMD_NR);
  return;
 } else if (is_huge_zero_pmd(*pmd)) {
  return __split_huge_zero_page_pmd(vma, haddr, pmd);
 }
 old_pmd = pmdp_invalidate(vma, haddr, pmd);

 pmd_migration = is_pmd_migration_entry(old_pmd);
 if (unlikely(pmd_migration)) {
  swp_entry_t entry;

  entry = pmd_to_swp_entry(old_pmd);
  page = pfn_to_page(swp_offset(entry));
  write = is_write_migration_entry(entry);
  young = 0;
  soft_dirty = pmd_swp_soft_dirty(old_pmd);
 } else {
  page = pmd_page(old_pmd);
  if (pmd_dirty(old_pmd))
   SetPageDirty(page);
  write = pmd_write(old_pmd);
  young = pmd_young(old_pmd);
  soft_dirty = pmd_soft_dirty(old_pmd);
 }
 VM_BUG_ON_PAGE(!page_count(page), page);
 page_ref_add(page, HPAGE_PMD_NR - 1);





 pgtable = pgtable_trans_huge_withdraw(mm, pmd);
 pmd_populate(mm, &_pmd, pgtable);

 for (i = 0, addr = haddr; i < HPAGE_PMD_NR; i++, addr += PAGE_SIZE) {
  pte_t entry, *pte;





  if (freeze || pmd_migration) {
   swp_entry_t swp_entry;
   swp_entry = make_migration_entry(page + i, write);
   entry = swp_entry_to_pte(swp_entry);
   if (soft_dirty)
    entry = pte_swp_mksoft_dirty(entry);
  } else {
   entry = mk_pte(page + i, READ_ONCE(vma->vm_page_prot));
   entry = maybe_mkwrite(entry, vma);
   if (!write)
    entry = pte_wrprotect(entry);
   if (!young)
    entry = pte_mkold(entry);
   if (soft_dirty)
    entry = pte_mksoft_dirty(entry);
  }
  pte = pte_offset_map(&_pmd, addr);
  BUG_ON(!pte_none(*pte));
  set_pte_at(mm, addr, pte, entry);
  atomic_inc(&page[i]._mapcount);
  pte_unmap(pte);
 }





 if (compound_mapcount(page) > 1 && !TestSetPageDoubleMap(page)) {
  for (i = 0; i < HPAGE_PMD_NR; i++)
   atomic_inc(&page[i]._mapcount);
 }

 if (atomic_add_negative(-1, compound_mapcount_ptr(page))) {

  __dec_node_page_state(page, NR_ANON_THPS);
  if (TestClearPageDoubleMap(page)) {

   for (i = 0; i < HPAGE_PMD_NR; i++)
    atomic_dec(&page[i]._mapcount);
  }
 }

 smp_wmb();
 pmd_populate(mm, pmd, pgtable);

 if (freeze) {
  for (i = 0; i < HPAGE_PMD_NR; i++) {
   page_remove_rmap(page + i, 0);
   put_page(page + i);
  }
 }
}
