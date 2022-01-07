
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {int dummy; } ;
struct z3fold_header {int cpu; int work; int buddy; struct z3fold_pool* pool; struct z3fold_buddy_slots* slots; scalar_t__ start_middle; scalar_t__ first_num; scalar_t__ last_chunks; scalar_t__ middle_chunks; scalar_t__ first_chunks; int refcount; int page_lock; } ;
struct z3fold_buddy_slots {int dummy; } ;
struct page {int private; int lru; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MIDDLE_CHUNK_MAPPED ;
 int NEEDS_COMPACTING ;
 int PAGE_CLAIMED ;
 int PAGE_HEADLESS ;
 int PAGE_STALE ;
 struct z3fold_buddy_slots* alloc_slots (struct z3fold_pool*,int ) ;
 int clear_bit (int ,int *) ;
 int compact_page_work ;
 int kref_init (int *) ;
 struct z3fold_header* page_address (struct page*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct z3fold_header *init_z3fold_page(struct page *page, bool headless,
     struct z3fold_pool *pool, gfp_t gfp)
{
 struct z3fold_header *zhdr = page_address(page);
 struct z3fold_buddy_slots *slots;

 INIT_LIST_HEAD(&page->lru);
 clear_bit(PAGE_HEADLESS, &page->private);
 clear_bit(MIDDLE_CHUNK_MAPPED, &page->private);
 clear_bit(NEEDS_COMPACTING, &page->private);
 clear_bit(PAGE_STALE, &page->private);
 clear_bit(PAGE_CLAIMED, &page->private);
 if (headless)
  return zhdr;

 slots = alloc_slots(pool, gfp);
 if (!slots)
  return ((void*)0);

 spin_lock_init(&zhdr->page_lock);
 kref_init(&zhdr->refcount);
 zhdr->first_chunks = 0;
 zhdr->middle_chunks = 0;
 zhdr->last_chunks = 0;
 zhdr->first_num = 0;
 zhdr->start_middle = 0;
 zhdr->cpu = -1;
 zhdr->slots = slots;
 zhdr->pool = pool;
 INIT_LIST_HEAD(&zhdr->buddy);
 INIT_WORK(&zhdr->work, compact_page_work);
 return zhdr;
}
