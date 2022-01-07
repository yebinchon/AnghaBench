
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct anon_vma {int dummy; } ;
typedef struct page* (* new_page_t ) (struct page*,unsigned long) ;
typedef int (* free_page_t ) (struct page*,unsigned long) ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;


 int EAGAIN ;
 int EBUSY ;
 int ENOMEM ;
 int ENOSYS ;
 int MIGRATEPAGE_SUCCESS ;


 scalar_t__ PageAnon (struct page*) ;
 int TTU_IGNORE_ACCESS ;
 int TTU_IGNORE_MLOCK ;
 int TTU_MIGRATION ;
 int hugepage_migration_supported (int ) ;
 int lock_page (struct page*) ;
 int move_hugetlb_state (struct page*,struct page*,int) ;
 int move_to_new_page (struct page*,struct page*,int) ;
 struct anon_vma* page_get_anon_vma (struct page*) ;
 int page_hstate (struct page*) ;
 scalar_t__ page_mapped (struct page*) ;
 int page_mapping (struct page*) ;
 scalar_t__ page_private (struct page*) ;
 int put_anon_vma (struct anon_vma*) ;
 int putback_active_hugepage (struct page*) ;
 int remove_migration_ptes (struct page*,struct page*,int) ;
 int try_to_unmap (struct page*,int) ;
 int trylock_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int unmap_and_move_huge_page(new_page_t get_new_page,
    free_page_t put_new_page, unsigned long private,
    struct page *hpage, int force,
    enum migrate_mode mode, int reason)
{
 int rc = -EAGAIN;
 int page_was_mapped = 0;
 struct page *new_hpage;
 struct anon_vma *anon_vma = ((void*)0);
 if (!hugepage_migration_supported(page_hstate(hpage))) {
  putback_active_hugepage(hpage);
  return -ENOSYS;
 }

 new_hpage = get_new_page(hpage, private);
 if (!new_hpage)
  return -ENOMEM;

 if (!trylock_page(hpage)) {
  if (!force)
   goto out;
  switch (mode) {
  case 129:
  case 128:
   break;
  default:
   goto out;
  }
  lock_page(hpage);
 }






 if (page_private(hpage) && !page_mapping(hpage)) {
  rc = -EBUSY;
  goto out_unlock;
 }

 if (PageAnon(hpage))
  anon_vma = page_get_anon_vma(hpage);

 if (unlikely(!trylock_page(new_hpage)))
  goto put_anon;

 if (page_mapped(hpage)) {
  try_to_unmap(hpage,
   TTU_MIGRATION|TTU_IGNORE_MLOCK|TTU_IGNORE_ACCESS);
  page_was_mapped = 1;
 }

 if (!page_mapped(hpage))
  rc = move_to_new_page(new_hpage, hpage, mode);

 if (page_was_mapped)
  remove_migration_ptes(hpage,
   rc == MIGRATEPAGE_SUCCESS ? new_hpage : hpage, 0);

 unlock_page(new_hpage);

put_anon:
 if (anon_vma)
  put_anon_vma(anon_vma);

 if (rc == MIGRATEPAGE_SUCCESS) {
  move_hugetlb_state(hpage, new_hpage, reason);
  put_new_page = ((void*)0);
 }

out_unlock:
 unlock_page(hpage);
out:
 if (rc != -EAGAIN)
  putback_active_hugepage(hpage);






 if (put_new_page)
  put_new_page(new_hpage, private);
 else
  putback_active_hugepage(new_hpage);

 return rc;
}
