
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {unsigned long val; } ;
typedef TYPE_1__ swp_entry_t ;
struct vm_area_struct {unsigned long vm_flags; } ;
struct page {int dummy; } ;
struct mm_struct {int mmlist; } ;
typedef int pte_t ;


 size_t MM_SWAPENTS ;
 unsigned long VM_SHARED ;
 struct page* device_private_entry_to_page (TYPE_1__) ;
 int get_page (struct page*) ;
 scalar_t__ is_cow_mapping (unsigned long) ;
 scalar_t__ is_device_private_entry (TYPE_1__) ;
 scalar_t__ is_migration_entry (TYPE_1__) ;
 scalar_t__ is_write_device_private_entry (TYPE_1__) ;
 scalar_t__ is_write_migration_entry (TYPE_1__) ;
 scalar_t__ likely (int) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int make_device_private_entry_read (TYPE_1__*) ;
 int make_migration_entry_read (TYPE_1__*) ;
 struct page* migration_entry_to_page (TYPE_1__) ;
 size_t mm_counter (struct page*) ;
 int mmlist_lock ;
 int non_swap_entry (TYPE_1__) ;
 int page_dup_rmap (struct page*,int) ;
 scalar_t__ pte_devmap (int ) ;
 int pte_mkclean (int ) ;
 int pte_mkold (int ) ;
 struct page* pte_page (int ) ;
 int pte_present (int ) ;
 int pte_swp_mksoft_dirty (int ) ;
 scalar_t__ pte_swp_soft_dirty (int ) ;
 TYPE_1__ pte_to_swp_entry (int ) ;
 scalar_t__ pte_write (int ) ;
 int pte_wrprotect (int ) ;
 int ptep_set_wrprotect (struct mm_struct*,unsigned long,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ swap_duplicate (TYPE_1__) ;
 int swp_entry_to_pte (TYPE_1__) ;
 scalar_t__ unlikely (int) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static inline unsigned long
copy_one_pte(struct mm_struct *dst_mm, struct mm_struct *src_mm,
  pte_t *dst_pte, pte_t *src_pte, struct vm_area_struct *vma,
  unsigned long addr, int *rss)
{
 unsigned long vm_flags = vma->vm_flags;
 pte_t pte = *src_pte;
 struct page *page;


 if (unlikely(!pte_present(pte))) {
  swp_entry_t entry = pte_to_swp_entry(pte);

  if (likely(!non_swap_entry(entry))) {
   if (swap_duplicate(entry) < 0)
    return entry.val;


   if (unlikely(list_empty(&dst_mm->mmlist))) {
    spin_lock(&mmlist_lock);
    if (list_empty(&dst_mm->mmlist))
     list_add(&dst_mm->mmlist,
       &src_mm->mmlist);
    spin_unlock(&mmlist_lock);
   }
   rss[MM_SWAPENTS]++;
  } else if (is_migration_entry(entry)) {
   page = migration_entry_to_page(entry);

   rss[mm_counter(page)]++;

   if (is_write_migration_entry(entry) &&
     is_cow_mapping(vm_flags)) {




    make_migration_entry_read(&entry);
    pte = swp_entry_to_pte(entry);
    if (pte_swp_soft_dirty(*src_pte))
     pte = pte_swp_mksoft_dirty(pte);
    set_pte_at(src_mm, addr, src_pte, pte);
   }
  } else if (is_device_private_entry(entry)) {
   page = device_private_entry_to_page(entry);
   get_page(page);
   rss[mm_counter(page)]++;
   page_dup_rmap(page, 0);
   if (is_write_device_private_entry(entry) &&
       is_cow_mapping(vm_flags)) {
    make_device_private_entry_read(&entry);
    pte = swp_entry_to_pte(entry);
    set_pte_at(src_mm, addr, src_pte, pte);
   }
  }
  goto out_set_pte;
 }





 if (is_cow_mapping(vm_flags) && pte_write(pte)) {
  ptep_set_wrprotect(src_mm, addr, src_pte);
  pte = pte_wrprotect(pte);
 }





 if (vm_flags & VM_SHARED)
  pte = pte_mkclean(pte);
 pte = pte_mkold(pte);

 page = vm_normal_page(vma, addr, pte);
 if (page) {
  get_page(page);
  page_dup_rmap(page, 0);
  rss[mm_counter(page)]++;
 } else if (pte_devmap(pte)) {
  page = pte_page(pte);
 }

out_set_pte:
 set_pte_at(dst_mm, addr, dst_pte, pte);
 return 0;
}
