
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct page* next; int inuse; scalar_t__ frozen; int freelist; int counters; } ;
struct kmem_cache_node {scalar_t__ nr_partial; int list_lock; } ;
struct kmem_cache_cpu {struct page* partial; } ;
struct kmem_cache {scalar_t__ min_partial; } ;


 int DEACTIVATE_EMPTY ;
 int DEACTIVATE_TO_TAIL ;
 int FREE_ADD_PARTIAL ;
 int FREE_SLAB ;
 int VM_BUG_ON (int) ;
 int __cmpxchg_double_slab (struct kmem_cache*,struct page*,int ,int ,int ,int ,char*) ;
 int add_partial (struct kmem_cache_node*,struct page*,int ) ;
 int discard_slab (struct kmem_cache*,struct page*) ;
 struct kmem_cache_node* get_node (struct kmem_cache*,int ) ;
 int page_to_nid (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stat (struct kmem_cache*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void unfreeze_partials(struct kmem_cache *s,
  struct kmem_cache_cpu *c)
{
}
