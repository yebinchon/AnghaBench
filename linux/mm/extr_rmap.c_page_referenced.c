
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmap_walk_control {void* arg; int invalid_vma; int anon_lock; int rmap_one; } ;
struct page_referenced_arg {unsigned long vm_flags; int referenced; int mapcount; struct mem_cgroup* memcg; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;


 int PageAnon (struct page*) ;
 scalar_t__ PageKsm (struct page*) ;
 int invalid_page_referenced_vma ;
 int page_lock_anon_vma_read ;
 int page_referenced_one ;
 int page_rmapping (struct page*) ;
 int rmap_walk (struct page*,struct rmap_walk_control*) ;
 int total_mapcount (struct page*) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

int page_referenced(struct page *page,
      int is_locked,
      struct mem_cgroup *memcg,
      unsigned long *vm_flags)
{
 int we_locked = 0;
 struct page_referenced_arg pra = {
  .mapcount = total_mapcount(page),
  .memcg = memcg,
 };
 struct rmap_walk_control rwc = {
  .rmap_one = page_referenced_one,
  .arg = (void *)&pra,
  .anon_lock = page_lock_anon_vma_read,
 };

 *vm_flags = 0;
 if (!pra.mapcount)
  return 0;

 if (!page_rmapping(page))
  return 0;

 if (!is_locked && (!PageAnon(page) || PageKsm(page))) {
  we_locked = trylock_page(page);
  if (!we_locked)
   return 1;
 }






 if (memcg) {
  rwc.invalid_vma = invalid_page_referenced_vma;
 }

 rmap_walk(page, &rwc);
 *vm_flags = pra.vm_flags;

 if (we_locked)
  unlock_page(page);

 return pra.referenced;
}
