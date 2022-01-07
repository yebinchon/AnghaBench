
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int stale_lock; int work; int release_wq; int stale; int lock; } ;
struct z3fold_header {int buddy; } ;
struct page {int lru; int private; } ;


 int NEEDS_COMPACTING ;
 int PAGE_STALE ;
 int WARN_ON (int) ;
 int clear_bit (int ,int *) ;
 int list_add (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct page* virt_to_page (struct z3fold_header*) ;
 int z3fold_page_unlock (struct z3fold_header*) ;
 struct z3fold_pool* zhdr_to_pool (struct z3fold_header*) ;

__attribute__((used)) static void __release_z3fold_page(struct z3fold_header *zhdr, bool locked)
{
 struct page *page = virt_to_page(zhdr);
 struct z3fold_pool *pool = zhdr_to_pool(zhdr);

 WARN_ON(!list_empty(&zhdr->buddy));
 set_bit(PAGE_STALE, &page->private);
 clear_bit(NEEDS_COMPACTING, &page->private);
 spin_lock(&pool->lock);
 if (!list_empty(&page->lru))
  list_del_init(&page->lru);
 spin_unlock(&pool->lock);
 if (locked)
  z3fold_page_unlock(zhdr);
 spin_lock(&pool->stale_lock);
 list_add(&zhdr->buddy, &pool->stale);
 queue_work(pool->release_wq, &pool->work);
 spin_unlock(&pool->stale_lock);
}
