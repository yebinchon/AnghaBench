
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmap_walk_control {void* arg; int invalid_vma; int anon_lock; int done; int rmap_one; } ;
struct page {int dummy; } ;
typedef enum ttu_flags { ____Placeholder_ttu_flags } ttu_flags ;


 scalar_t__ PageAnon (struct page*) ;
 int PageKsm (struct page*) ;
 int TTU_MIGRATION ;
 int TTU_RMAP_LOCKED ;
 int TTU_SPLIT_FREEZE ;
 int invalid_migration_vma ;
 int page_lock_anon_vma_read ;
 int page_mapcount (struct page*) ;
 int page_mapcount_is_zero ;
 int rmap_walk (struct page*,struct rmap_walk_control*) ;
 int rmap_walk_locked (struct page*,struct rmap_walk_control*) ;
 int try_to_unmap_one ;

bool try_to_unmap(struct page *page, enum ttu_flags flags)
{
 struct rmap_walk_control rwc = {
  .rmap_one = try_to_unmap_one,
  .arg = (void *)flags,
  .done = page_mapcount_is_zero,
  .anon_lock = page_lock_anon_vma_read,
 };
 if ((flags & (TTU_MIGRATION|TTU_SPLIT_FREEZE))
     && !PageKsm(page) && PageAnon(page))
  rwc.invalid_vma = invalid_migration_vma;

 if (flags & TTU_RMAP_LOCKED)
  rmap_walk_locked(page, &rwc);
 else
  rmap_walk(page, &rwc);

 return !page_mapcount(page) ? 1 : 0;
}
