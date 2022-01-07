
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int compact_wq; int lock; int lru; } ;
struct z3fold_header {scalar_t__ mapped_count; int work; int cpu; scalar_t__ middle_chunks; scalar_t__ last_chunks; scalar_t__ first_chunks; int buddy; int page_lock; } ;
struct page {int lru; scalar_t__ private; } ;
struct address_space {int dummy; } ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;


 int ClearPagePrivate (struct page*) ;
 int EAGAIN ;
 int EBUSY ;
 int FIRST ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int LAST ;
 int MIDDLE ;
 int NEEDS_COMPACTING ;
 int PAGE_SIZE ;
 int PageIsolated (struct page*) ;
 int PageLocked (struct page*) ;
 int PageMovable (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __ClearPageMovable (struct page*) ;
 int __SetPageMovable (struct page*,struct address_space*) ;
 int compact_page_work ;
 int encode_handle (struct z3fold_header*,int ) ;
 int get_page (struct page*) ;
 int list_add (int *,int *) ;
 int memcpy (struct z3fold_header*,struct z3fold_header*,int ) ;
 struct z3fold_header* page_address (struct page*) ;
 int page_mapcount_reset (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int put_page (struct page*) ;
 int queue_work_on (int ,int ,int *) ;
 int set_bit (int ,scalar_t__*) ;
 int smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ work_pending (int *) ;
 int z3fold_page_lock (struct z3fold_header*) ;
 int z3fold_page_trylock (struct z3fold_header*) ;
 int z3fold_page_unlock (struct z3fold_header*) ;
 struct z3fold_pool* zhdr_to_pool (struct z3fold_header*) ;

__attribute__((used)) static int z3fold_page_migrate(struct address_space *mapping, struct page *newpage,
          struct page *page, enum migrate_mode mode)
{
 struct z3fold_header *zhdr, *new_zhdr;
 struct z3fold_pool *pool;
 struct address_space *new_mapping;

 VM_BUG_ON_PAGE(!PageMovable(page), page);
 VM_BUG_ON_PAGE(!PageIsolated(page), page);
 VM_BUG_ON_PAGE(!PageLocked(newpage), newpage);

 zhdr = page_address(page);
 pool = zhdr_to_pool(zhdr);

 if (!z3fold_page_trylock(zhdr)) {
  return -EAGAIN;
 }
 if (zhdr->mapped_count != 0) {
  z3fold_page_unlock(zhdr);
  return -EBUSY;
 }
 if (work_pending(&zhdr->work)) {
  z3fold_page_unlock(zhdr);
  return -EAGAIN;
 }
 new_zhdr = page_address(newpage);
 memcpy(new_zhdr, zhdr, PAGE_SIZE);
 newpage->private = page->private;
 page->private = 0;
 z3fold_page_unlock(zhdr);
 spin_lock_init(&new_zhdr->page_lock);
 INIT_WORK(&new_zhdr->work, compact_page_work);




 INIT_LIST_HEAD(&new_zhdr->buddy);
 new_mapping = page_mapping(page);
 __ClearPageMovable(page);
 ClearPagePrivate(page);

 get_page(newpage);
 z3fold_page_lock(new_zhdr);
 if (new_zhdr->first_chunks)
  encode_handle(new_zhdr, FIRST);
 if (new_zhdr->last_chunks)
  encode_handle(new_zhdr, LAST);
 if (new_zhdr->middle_chunks)
  encode_handle(new_zhdr, MIDDLE);
 set_bit(NEEDS_COMPACTING, &newpage->private);
 new_zhdr->cpu = smp_processor_id();
 spin_lock(&pool->lock);
 list_add(&newpage->lru, &pool->lru);
 spin_unlock(&pool->lock);
 __SetPageMovable(newpage, new_mapping);
 z3fold_page_unlock(new_zhdr);

 queue_work_on(new_zhdr->cpu, pool->compact_wq, &new_zhdr->work);

 page_mapcount_reset(page);
 put_page(page);
 return 0;
}
