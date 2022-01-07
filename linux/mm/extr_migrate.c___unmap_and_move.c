
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int mapping; } ;
struct anon_vma {int dummy; } ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;
struct TYPE_2__ {int flags; } ;


 int EAGAIN ;
 int EBUSY ;
 int MIGRATEPAGE_SUCCESS ;
 int MIGRATE_ASYNC ;


 int PF_MEMALLOC ;
 int PageAnon (struct page*) ;
 int PageKsm (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int TTU_IGNORE_ACCESS ;
 int TTU_IGNORE_MLOCK ;
 int TTU_MIGRATION ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __PageMovable (struct page*) ;
 TYPE_1__* current ;
 int lock_page (struct page*) ;
 int move_to_new_page (struct page*,struct page*,int) ;
 struct anon_vma* page_get_anon_vma (struct page*) ;
 scalar_t__ page_has_private (struct page*) ;
 scalar_t__ page_mapped (struct page*) ;
 int put_anon_vma (struct anon_vma*) ;
 int put_page (struct page*) ;
 int putback_lru_page (struct page*) ;
 int remove_migration_ptes (struct page*,struct page*,int) ;
 int try_to_free_buffers (struct page*) ;
 int try_to_unmap (struct page*,int) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int __unmap_and_move(struct page *page, struct page *newpage,
    int force, enum migrate_mode mode)
{
 int rc = -EAGAIN;
 int page_was_mapped = 0;
 struct anon_vma *anon_vma = ((void*)0);
 bool is_lru = !__PageMovable(page);

 if (!trylock_page(page)) {
  if (!force || mode == MIGRATE_ASYNC)
   goto out;
  if (current->flags & PF_MEMALLOC)
   goto out;

  lock_page(page);
 }

 if (PageWriteback(page)) {






  switch (mode) {
  case 129:
  case 128:
   break;
  default:
   rc = -EBUSY;
   goto out_unlock;
  }
  if (!force)
   goto out_unlock;
  wait_on_page_writeback(page);
 }
 if (PageAnon(page) && !PageKsm(page))
  anon_vma = page_get_anon_vma(page);
 if (unlikely(!trylock_page(newpage)))
  goto out_unlock;

 if (unlikely(!is_lru)) {
  rc = move_to_new_page(newpage, page, mode);
  goto out_unlock_both;
 }
 if (!page->mapping) {
  VM_BUG_ON_PAGE(PageAnon(page), page);
  if (page_has_private(page)) {
   try_to_free_buffers(page);
   goto out_unlock_both;
  }
 } else if (page_mapped(page)) {

  VM_BUG_ON_PAGE(PageAnon(page) && !PageKsm(page) && !anon_vma,
    page);
  try_to_unmap(page,
   TTU_MIGRATION|TTU_IGNORE_MLOCK|TTU_IGNORE_ACCESS);
  page_was_mapped = 1;
 }

 if (!page_mapped(page))
  rc = move_to_new_page(newpage, page, mode);

 if (page_was_mapped)
  remove_migration_ptes(page,
   rc == MIGRATEPAGE_SUCCESS ? newpage : page, 0);

out_unlock_both:
 unlock_page(newpage);
out_unlock:

 if (anon_vma)
  put_anon_vma(anon_vma);
 unlock_page(page);
out:
 if (rc == MIGRATEPAGE_SUCCESS) {
  if (unlikely(!is_lru))
   put_page(newpage);
  else
   putback_lru_page(newpage);
 }

 return rc;
}
