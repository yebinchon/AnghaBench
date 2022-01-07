
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int frozen; } ;
struct kmem_cache_cpu {struct page* page; int tid; void* freelist; } ;
struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int ALLOC_NODE_MISMATCH ;
 int ALLOC_REFILL ;
 int CPU_PARTIAL_ALLOC ;
 int DEACTIVATE_BYPASS ;
 int NUMA_NO_NODE ;
 int VM_BUG_ON (int) ;
 int alloc_debug_processing (struct kmem_cache*,struct page*,void*,unsigned long) ;
 int deactivate_slab (struct kmem_cache*,struct page*,void*,struct kmem_cache_cpu*) ;
 void* get_freelist (struct kmem_cache*,struct page*) ;
 void* get_freepointer (struct kmem_cache*,void*) ;
 scalar_t__ kmem_cache_debug (struct kmem_cache*) ;
 scalar_t__ likely (int) ;
 void* new_slab_objects (struct kmem_cache*,int ,int,struct kmem_cache_cpu**) ;
 int next_tid (int ) ;
 int node_match (struct page*,int) ;
 int node_present_pages (int) ;
 int node_to_mem_node (int) ;
 scalar_t__ pfmemalloc_match (struct page*,int ) ;
 int slab_out_of_memory (struct kmem_cache*,int ,int) ;
 struct page* slub_percpu_partial (struct kmem_cache_cpu*) ;
 int slub_set_percpu_partial (struct kmem_cache_cpu*,struct page*) ;
 int stat (struct kmem_cache*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *___slab_alloc(struct kmem_cache *s, gfp_t gfpflags, int node,
     unsigned long addr, struct kmem_cache_cpu *c)
{
 void *freelist;
 struct page *page;

 page = c->page;
 if (!page)
  goto new_slab;
redo:

 if (unlikely(!node_match(page, node))) {
  int searchnode = node;

  if (node != NUMA_NO_NODE && !node_present_pages(node))
   searchnode = node_to_mem_node(node);

  if (unlikely(!node_match(page, searchnode))) {
   stat(s, ALLOC_NODE_MISMATCH);
   deactivate_slab(s, page, c->freelist, c);
   goto new_slab;
  }
 }






 if (unlikely(!pfmemalloc_match(page, gfpflags))) {
  deactivate_slab(s, page, c->freelist, c);
  goto new_slab;
 }


 freelist = c->freelist;
 if (freelist)
  goto load_freelist;

 freelist = get_freelist(s, page);

 if (!freelist) {
  c->page = ((void*)0);
  stat(s, DEACTIVATE_BYPASS);
  goto new_slab;
 }

 stat(s, ALLOC_REFILL);

load_freelist:





 VM_BUG_ON(!c->page->frozen);
 c->freelist = get_freepointer(s, freelist);
 c->tid = next_tid(c->tid);
 return freelist;

new_slab:

 if (slub_percpu_partial(c)) {
  page = c->page = slub_percpu_partial(c);
  slub_set_percpu_partial(c, page);
  stat(s, CPU_PARTIAL_ALLOC);
  goto redo;
 }

 freelist = new_slab_objects(s, gfpflags, node, &c);

 if (unlikely(!freelist)) {
  slab_out_of_memory(s, gfpflags, node);
  return ((void*)0);
 }

 page = c->page;
 if (likely(!kmem_cache_debug(s) && pfmemalloc_match(page, gfpflags)))
  goto load_freelist;


 if (kmem_cache_debug(s) &&
   !alloc_debug_processing(s, page, freelist, addr))
  goto new_slab;

 deactivate_slab(s, page, get_freepointer(s, freelist), c);
 return freelist;
}
