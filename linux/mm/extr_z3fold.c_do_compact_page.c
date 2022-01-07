
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int pages_nr; int lock; } ;
struct z3fold_header {int refcount; int buddy; } ;
struct page {int private; } ;


 int NEEDS_COMPACTING ;
 int PAGE_CLAIMED ;
 int PAGE_STALE ;
 scalar_t__ PageIsolated (struct page*) ;
 scalar_t__ WARN_ON (int) ;
 int add_to_unbuddied (struct z3fold_pool*,struct z3fold_header*) ;
 int atomic64_dec (int *) ;
 scalar_t__ kref_put (int *,int ) ;
 int list_del_init (int *) ;
 int release_z3fold_page_locked ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 struct page* virt_to_page (struct z3fold_header*) ;
 int z3fold_compact_page (struct z3fold_header*) ;
 int z3fold_page_lock (struct z3fold_header*) ;
 int z3fold_page_trylock (struct z3fold_header*) ;
 int z3fold_page_unlock (struct z3fold_header*) ;
 struct z3fold_pool* zhdr_to_pool (struct z3fold_header*) ;

__attribute__((used)) static void do_compact_page(struct z3fold_header *zhdr, bool locked)
{
 struct z3fold_pool *pool = zhdr_to_pool(zhdr);
 struct page *page;

 page = virt_to_page(zhdr);
 if (locked)
  WARN_ON(z3fold_page_trylock(zhdr));
 else
  z3fold_page_lock(zhdr);
 if (WARN_ON(!test_and_clear_bit(NEEDS_COMPACTING, &page->private))) {
  z3fold_page_unlock(zhdr);
  return;
 }
 spin_lock(&pool->lock);
 list_del_init(&zhdr->buddy);
 spin_unlock(&pool->lock);

 if (kref_put(&zhdr->refcount, release_z3fold_page_locked)) {
  atomic64_dec(&pool->pages_nr);
  return;
 }

 if (unlikely(PageIsolated(page) ||
       test_bit(PAGE_CLAIMED, &page->private) ||
       test_bit(PAGE_STALE, &page->private))) {
  z3fold_page_unlock(zhdr);
  return;
 }

 z3fold_compact_page(zhdr);
 add_to_unbuddied(pool, zhdr);
 z3fold_page_unlock(zhdr);
}
