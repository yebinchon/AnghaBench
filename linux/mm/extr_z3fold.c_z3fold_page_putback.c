
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int lock; int lru; int pages_nr; } ;
struct z3fold_header {int refcount; int buddy; } ;
struct page {int lru; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic64_dec (int *) ;
 scalar_t__ kref_put (int *,int ) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 struct z3fold_header* page_address (struct page*) ;
 int release_z3fold_page_locked ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int z3fold_page_lock (struct z3fold_header*) ;
 int z3fold_page_unlock (struct z3fold_header*) ;
 struct z3fold_pool* zhdr_to_pool (struct z3fold_header*) ;

__attribute__((used)) static void z3fold_page_putback(struct page *page)
{
 struct z3fold_header *zhdr;
 struct z3fold_pool *pool;

 zhdr = page_address(page);
 pool = zhdr_to_pool(zhdr);

 z3fold_page_lock(zhdr);
 if (!list_empty(&zhdr->buddy))
  list_del_init(&zhdr->buddy);
 INIT_LIST_HEAD(&page->lru);
 if (kref_put(&zhdr->refcount, release_z3fold_page_locked)) {
  atomic64_dec(&pool->pages_nr);
  return;
 }
 spin_lock(&pool->lock);
 list_add(&page->lru, &pool->lru);
 spin_unlock(&pool->lock);
 z3fold_page_unlock(zhdr);
}
