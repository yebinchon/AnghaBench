
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_cpu {int dummy; } ;
struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int NUMA_NO_NODE ;
 void* get_any_partial (struct kmem_cache*,int ,struct kmem_cache_cpu*) ;
 int get_node (struct kmem_cache*,int) ;
 void* get_partial_node (struct kmem_cache*,int ,struct kmem_cache_cpu*,int ) ;
 int node_present_pages (int) ;
 int node_to_mem_node (int) ;
 int numa_mem_id () ;

__attribute__((used)) static void *get_partial(struct kmem_cache *s, gfp_t flags, int node,
  struct kmem_cache_cpu *c)
{
 void *object;
 int searchnode = node;

 if (node == NUMA_NO_NODE)
  searchnode = numa_mem_id();
 else if (!node_present_pages(node))
  searchnode = node_to_mem_node(node);

 object = get_partial_node(s, get_node(s, searchnode), c, flags);
 if (object || node != NUMA_NO_NODE)
  return object;

 return get_any_partial(s, flags, c);
}
