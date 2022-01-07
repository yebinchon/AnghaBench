
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mempool_t ;
typedef int mempool_free_t ;
typedef int mempool_alloc_t ;
typedef int gfp_t ;


 int kfree (int *) ;
 int * kzalloc_node (int,int ,int) ;
 scalar_t__ mempool_init_node (int *,int,int *,int *,void*,int ,int) ;

mempool_t *mempool_create_node(int min_nr, mempool_alloc_t *alloc_fn,
          mempool_free_t *free_fn, void *pool_data,
          gfp_t gfp_mask, int node_id)
{
 mempool_t *pool;

 pool = kzalloc_node(sizeof(*pool), gfp_mask, node_id);
 if (!pool)
  return ((void*)0);

 if (mempool_init_node(pool, min_nr, alloc_fn, free_fn, pool_data,
         gfp_mask, node_id)) {
  kfree(pool);
  return ((void*)0);
 }

 return pool;
}
