
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmap_walk_control {void* arg; int anon_lock; int done; int rmap_one; } ;
struct page {int dummy; } ;


 scalar_t__ PageCompound (struct page*) ;
 scalar_t__ PageDoubleMap (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageLocked (struct page*) ;
 scalar_t__ TTU_MUNLOCK ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int page_lock_anon_vma_read ;
 int page_not_mapped ;
 int rmap_walk (struct page*,struct rmap_walk_control*) ;
 int try_to_unmap_one ;

void try_to_munlock(struct page *page)
{
 struct rmap_walk_control rwc = {
  .rmap_one = try_to_unmap_one,
  .arg = (void *)TTU_MUNLOCK,
  .done = page_not_mapped,
  .anon_lock = page_lock_anon_vma_read,

 };

 VM_BUG_ON_PAGE(!PageLocked(page) || PageLRU(page), page);
 VM_BUG_ON_PAGE(PageCompound(page) && PageDoubleMap(page), page);

 rmap_walk(page, &rwc);
}
