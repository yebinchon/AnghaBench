
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {void* freelist; unsigned long counters; int inuse; scalar_t__ frozen; } ;
struct kmem_cache_node {scalar_t__ nr_partial; int list_lock; } ;
struct kmem_cache_cpu {int * freelist; int * page; } ;
struct kmem_cache {scalar_t__ min_partial; } ;
typedef enum slab_modes { ____Placeholder_slab_modes } slab_modes ;


 int DEACTIVATE_EMPTY ;
 int DEACTIVATE_FULL ;
 int DEACTIVATE_REMOTE_FREES ;
 int DEACTIVATE_TO_HEAD ;
 int DEACTIVATE_TO_TAIL ;
 int FREE_SLAB ;
 int VM_BUG_ON (int) ;
 int __cmpxchg_double_slab (struct kmem_cache*,struct page*,void*,unsigned long,void*,unsigned long,char*) ;
 int add_full (struct kmem_cache*,struct kmem_cache_node*,struct page*) ;
 int add_partial (struct kmem_cache_node*,struct page*,int) ;
 int discard_slab (struct kmem_cache*,struct page*) ;
 void* get_freepointer (struct kmem_cache*,void*) ;
 struct kmem_cache_node* get_node (struct kmem_cache*,int ) ;
 scalar_t__ kmem_cache_debug (struct kmem_cache*) ;
 int page_to_nid (struct page*) ;
 int remove_full (struct kmem_cache*,struct kmem_cache_node*,struct page*) ;
 int remove_partial (struct kmem_cache_node*,struct page*) ;
 int set_freepointer (struct kmem_cache*,void*,void*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stat (struct kmem_cache*,int) ;

__attribute__((used)) static void deactivate_slab(struct kmem_cache *s, struct page *page,
    void *freelist, struct kmem_cache_cpu *c)
{
 enum slab_modes { M_NONE, M_PARTIAL, M_FULL, M_FREE };
 struct kmem_cache_node *n = get_node(s, page_to_nid(page));
 int lock = 0;
 enum slab_modes l = M_NONE, m = M_NONE;
 void *nextfree;
 int tail = DEACTIVATE_TO_HEAD;
 struct page new;
 struct page old;

 if (page->freelist) {
  stat(s, DEACTIVATE_REMOTE_FREES);
  tail = DEACTIVATE_TO_TAIL;
 }
 while (freelist && (nextfree = get_freepointer(s, freelist))) {
  void *prior;
  unsigned long counters;

  do {
   prior = page->freelist;
   counters = page->counters;
   set_freepointer(s, freelist, prior);
   new.counters = counters;
   new.inuse--;
   VM_BUG_ON(!new.frozen);

  } while (!__cmpxchg_double_slab(s, page,
   prior, counters,
   freelist, new.counters,
   "drain percpu freelist"));

  freelist = nextfree;
 }
redo:

 old.freelist = page->freelist;
 old.counters = page->counters;
 VM_BUG_ON(!old.frozen);


 new.counters = old.counters;
 if (freelist) {
  new.inuse--;
  set_freepointer(s, freelist, old.freelist);
  new.freelist = freelist;
 } else
  new.freelist = old.freelist;

 new.frozen = 0;

 if (!new.inuse && n->nr_partial >= s->min_partial)
  m = M_FREE;
 else if (new.freelist) {
  m = M_PARTIAL;
  if (!lock) {
   lock = 1;





   spin_lock(&n->list_lock);
  }
 } else {
  m = M_FULL;
  if (kmem_cache_debug(s) && !lock) {
   lock = 1;





   spin_lock(&n->list_lock);
  }
 }

 if (l != m) {
  if (l == M_PARTIAL)
   remove_partial(n, page);
  else if (l == M_FULL)
   remove_full(s, n, page);

  if (m == M_PARTIAL)
   add_partial(n, page, tail);
  else if (m == M_FULL)
   add_full(s, n, page);
 }

 l = m;
 if (!__cmpxchg_double_slab(s, page,
    old.freelist, old.counters,
    new.freelist, new.counters,
    "unfreezing slab"))
  goto redo;

 if (lock)
  spin_unlock(&n->list_lock);

 if (m == M_PARTIAL)
  stat(s, tail);
 else if (m == M_FULL)
  stat(s, DEACTIVATE_FULL);
 else if (m == M_FREE) {
  stat(s, DEACTIVATE_EMPTY);
  discard_slab(s, page);
  stat(s, FREE_SLAB);
 }

 c->page = ((void*)0);
 c->freelist = ((void*)0);
}
