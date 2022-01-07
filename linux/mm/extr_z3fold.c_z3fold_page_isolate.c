
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int lock; } ;
struct z3fold_header {scalar_t__ mapped_count; int buddy; int refcount; } ;
struct page {int lru; int private; } ;
typedef int isolate_mode_t ;


 int NEEDS_COMPACTING ;
 int PAGE_CLAIMED ;
 int PAGE_HEADLESS ;
 int PAGE_STALE ;
 int PageIsolated (struct page*) ;
 int PageMovable (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int kref_get (int *) ;
 int list_del (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 struct z3fold_header* page_address (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int z3fold_page_lock (struct z3fold_header*) ;
 int z3fold_page_unlock (struct z3fold_header*) ;
 struct z3fold_pool* zhdr_to_pool (struct z3fold_header*) ;

__attribute__((used)) static bool z3fold_page_isolate(struct page *page, isolate_mode_t mode)
{
 struct z3fold_header *zhdr;
 struct z3fold_pool *pool;

 VM_BUG_ON_PAGE(!PageMovable(page), page);
 VM_BUG_ON_PAGE(PageIsolated(page), page);

 if (test_bit(PAGE_HEADLESS, &page->private) ||
     test_bit(PAGE_CLAIMED, &page->private))
  return 0;

 zhdr = page_address(page);
 z3fold_page_lock(zhdr);
 if (test_bit(NEEDS_COMPACTING, &page->private) ||
     test_bit(PAGE_STALE, &page->private))
  goto out;

 pool = zhdr_to_pool(zhdr);

 if (zhdr->mapped_count == 0) {
  kref_get(&zhdr->refcount);
  if (!list_empty(&zhdr->buddy))
   list_del_init(&zhdr->buddy);
  spin_lock(&pool->lock);
  if (!list_empty(&page->lru))
   list_del(&page->lru);
  spin_unlock(&pool->lock);
  z3fold_page_unlock(zhdr);
  return 1;
 }
out:
 z3fold_page_unlock(zhdr);
 return 0;
}
