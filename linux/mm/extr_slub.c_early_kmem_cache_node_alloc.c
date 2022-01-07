
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct page {int inuse; int objects; scalar_t__ frozen; struct kmem_cache_node* freelist; } ;
struct kmem_cache_node {int dummy; } ;
struct TYPE_8__ {int size; struct kmem_cache_node** node; } ;


 int BUG_ON (int) ;
 int DEACTIVATE_TO_HEAD ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int SLUB_RED_ACTIVE ;
 int __add_partial (struct kmem_cache_node*,struct page*,int ) ;
 struct kmem_cache_node* get_freepointer (TYPE_1__*,struct kmem_cache_node*) ;
 int inc_slabs_node (TYPE_1__*,int,int ) ;
 int init_kmem_cache_node (struct kmem_cache_node*) ;
 int init_object (TYPE_1__*,struct kmem_cache_node*,int ) ;
 int init_tracking (TYPE_1__*,struct kmem_cache_node*) ;
 struct kmem_cache_node* kasan_kmalloc (TYPE_1__*,struct kmem_cache_node*,int,int ) ;
 TYPE_1__* kmem_cache_node ;
 struct page* new_slab (TYPE_1__*,int ,int) ;
 int page_to_nid (struct page*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static void early_kmem_cache_node_alloc(int node)
{
 struct page *page;
 struct kmem_cache_node *n;

 BUG_ON(kmem_cache_node->size < sizeof(struct kmem_cache_node));

 page = new_slab(kmem_cache_node, GFP_NOWAIT, node);

 BUG_ON(!page);
 if (page_to_nid(page) != node) {
  pr_err("SLUB: Unable to allocate memory from node %d\n", node);
  pr_err("SLUB: Allocating a useless per node structure in order to be able to continue\n");
 }

 n = page->freelist;
 BUG_ON(!n);




 n = kasan_kmalloc(kmem_cache_node, n, sizeof(struct kmem_cache_node),
        GFP_KERNEL);
 page->freelist = get_freepointer(kmem_cache_node, n);
 page->inuse = 1;
 page->frozen = 0;
 kmem_cache_node->node[node] = n;
 init_kmem_cache_node(n);
 inc_slabs_node(kmem_cache_node, node, page->objects);





 __add_partial(n, page, DEACTIVATE_TO_HEAD);
}
