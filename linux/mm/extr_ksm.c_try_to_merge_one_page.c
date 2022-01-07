
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;
typedef int pte_t ;


 int EFAULT ;
 int PageAnon (struct page*) ;
 int PageDirty (struct page*) ;
 int PageMlocked (struct page*) ;
 scalar_t__ PageTransCompound (struct page*) ;
 int SetPageDirty (struct page*) ;
 int VM_LOCKED ;
 int __pte (int ) ;
 int lock_page (struct page*) ;
 int mark_page_accessed (struct page*) ;
 int mlock_vma_page (struct page*) ;
 int munlock_vma_page (struct page*) ;
 scalar_t__ pages_identical (struct page*,struct page*) ;
 int replace_page (struct vm_area_struct*,struct page*,struct page*,int ) ;
 int set_page_stable_node (struct page*,int *) ;
 scalar_t__ split_huge_page (struct page*) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;
 scalar_t__ write_protect_page (struct vm_area_struct*,struct page*,int *) ;

__attribute__((used)) static int try_to_merge_one_page(struct vm_area_struct *vma,
     struct page *page, struct page *kpage)
{
 pte_t orig_pte = __pte(0);
 int err = -EFAULT;

 if (page == kpage)
  return 0;

 if (!PageAnon(page))
  goto out;
 if (!trylock_page(page))
  goto out;

 if (PageTransCompound(page)) {
  if (split_huge_page(page))
   goto out_unlock;
 }







 if (write_protect_page(vma, page, &orig_pte) == 0) {
  if (!kpage) {





   set_page_stable_node(page, ((void*)0));
   mark_page_accessed(page);




   if (!PageDirty(page))
    SetPageDirty(page);
   err = 0;
  } else if (pages_identical(page, kpage))
   err = replace_page(vma, page, kpage, orig_pte);
 }

 if ((vma->vm_flags & VM_LOCKED) && kpage && !err) {
  munlock_vma_page(page);
  if (!PageMlocked(kpage)) {
   unlock_page(page);
   lock_page(kpage);
   mlock_vma_page(kpage);
   page = kpage;
  }
 }

out_unlock:
 unlock_page(page);
out:
 return err;
}
