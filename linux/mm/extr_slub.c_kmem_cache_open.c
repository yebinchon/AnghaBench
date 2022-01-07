
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; int remote_node_defrag_ratio; int size; scalar_t__ offset; int object_size; int random; int ctor; int name; } ;
typedef int slab_flags_t ;


 int DEBUG_METADATA_FLAGS ;
 int EINVAL ;
 int SLAB_NO_CMPXCHG ;
 scalar_t__ UP ;
 int __CMPXCHG_DOUBLE ;
 scalar_t__ alloc_kmem_cache_cpus (struct kmem_cache*) ;
 int calculate_sizes (struct kmem_cache*,int) ;
 scalar_t__ disable_higher_order_debug ;
 int free_kmem_cache_nodes (struct kmem_cache*) ;
 scalar_t__ get_order (int ) ;
 int get_random_long () ;
 int ilog2 (int ) ;
 scalar_t__ init_cache_random_seq (struct kmem_cache*) ;
 int init_kmem_cache_nodes (struct kmem_cache*) ;
 int kmem_cache_flags (int ,int ,int ,int ) ;
 int set_cpu_partial (struct kmem_cache*) ;
 int set_min_partial (struct kmem_cache*,int) ;
 scalar_t__ slab_state ;
 scalar_t__ system_has_cmpxchg_double () ;

__attribute__((used)) static int kmem_cache_open(struct kmem_cache *s, slab_flags_t flags)
{
 s->flags = kmem_cache_flags(s->size, flags, s->name, s->ctor);




 if (!calculate_sizes(s, -1))
  goto error;
 if (disable_higher_order_debug) {




  if (get_order(s->size) > get_order(s->object_size)) {
   s->flags &= ~DEBUG_METADATA_FLAGS;
   s->offset = 0;
   if (!calculate_sizes(s, -1))
    goto error;
  }
 }
 set_min_partial(s, ilog2(s->size) / 2);

 set_cpu_partial(s);






 if (slab_state >= UP) {
  if (init_cache_random_seq(s))
   goto error;
 }

 if (!init_kmem_cache_nodes(s))
  goto error;

 if (alloc_kmem_cache_cpus(s))
  return 0;

 free_kmem_cache_nodes(s);
error:
 return -EINVAL;
}
