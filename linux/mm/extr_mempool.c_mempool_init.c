
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mempool_t ;
typedef int mempool_free_t ;
typedef int mempool_alloc_t ;


 int GFP_KERNEL ;
 int NUMA_NO_NODE ;
 int mempool_init_node (int *,int,int *,int *,void*,int ,int ) ;

int mempool_init(mempool_t *pool, int min_nr, mempool_alloc_t *alloc_fn,
   mempool_free_t *free_fn, void *pool_data)
{
 return mempool_init_node(pool, min_nr, alloc_fn, free_fn,
     pool_data, GFP_KERNEL, NUMA_NO_NODE);

}
