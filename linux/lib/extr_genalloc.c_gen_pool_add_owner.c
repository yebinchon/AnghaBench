
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool_chunk {unsigned long start_addr; unsigned long end_addr; int next_chunk; int avail; void* owner; int phys_addr; } ;
struct gen_pool {size_t min_alloc_order; int lock; int chunks; } ;
typedef int phys_addr_t ;


 int BITS_TO_LONGS (int) ;
 int ENOMEM ;
 int atomic_long_set (int *,size_t) ;
 int list_add_rcu (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 struct gen_pool_chunk* vzalloc_node (int,int) ;

int gen_pool_add_owner(struct gen_pool *pool, unsigned long virt, phys_addr_t phys,
   size_t size, int nid, void *owner)
{
 struct gen_pool_chunk *chunk;
 int nbits = size >> pool->min_alloc_order;
 int nbytes = sizeof(struct gen_pool_chunk) +
    BITS_TO_LONGS(nbits) * sizeof(long);

 chunk = vzalloc_node(nbytes, nid);
 if (unlikely(chunk == ((void*)0)))
  return -ENOMEM;

 chunk->phys_addr = phys;
 chunk->start_addr = virt;
 chunk->end_addr = virt + size - 1;
 chunk->owner = owner;
 atomic_long_set(&chunk->avail, size);

 spin_lock(&pool->lock);
 list_add_rcu(&chunk->next_chunk, &pool->chunks);
 spin_unlock(&pool->lock);

 return 0;
}
