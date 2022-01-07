
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int min_nr; int curr_nr; void* pool_data; void* (* alloc ) (int ,void*) ;int elements; int wait; int * free; int lock; } ;
typedef TYPE_1__ mempool_t ;
typedef int mempool_free_t ;
typedef void* (* mempool_alloc_t ) (int ,void*) ;
typedef int gfp_t ;


 int ENOMEM ;
 int add_element (TYPE_1__*,void*) ;
 int init_waitqueue_head (int *) ;
 int kmalloc_array_node (int,int,int ,int) ;
 int mempool_exit (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 void* stub1 (int ,void*) ;
 scalar_t__ unlikely (int) ;

int mempool_init_node(mempool_t *pool, int min_nr, mempool_alloc_t *alloc_fn,
        mempool_free_t *free_fn, void *pool_data,
        gfp_t gfp_mask, int node_id)
{
 spin_lock_init(&pool->lock);
 pool->min_nr = min_nr;
 pool->pool_data = pool_data;
 pool->alloc = alloc_fn;
 pool->free = free_fn;
 init_waitqueue_head(&pool->wait);

 pool->elements = kmalloc_array_node(min_nr, sizeof(void *),
         gfp_mask, node_id);
 if (!pool->elements)
  return -ENOMEM;




 while (pool->curr_nr < pool->min_nr) {
  void *element;

  element = pool->alloc(gfp_mask, pool->pool_data);
  if (unlikely(!element)) {
   mempool_exit(pool);
   return -ENOMEM;
  }
  add_element(pool, element);
 }

 return 0;
}
