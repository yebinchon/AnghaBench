
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int dev; } ;
struct TYPE_3__ {int count; } ;
struct page_pool {TYPE_2__ p; int ring; TYPE_1__ alloc; } ;


 int PP_FLAG_DMA_MAP ;
 int WARN (int,char*) ;
 int __page_pool_safe_to_destroy (struct page_pool*) ;
 int __warn_in_flight (struct page_pool*) ;
 int kfree (struct page_pool*) ;
 int page_pool_put (struct page_pool*) ;
 int ptr_ring_cleanup (int *,int *) ;
 int ptr_ring_empty (int *) ;
 int put_device (int ) ;

void __page_pool_free(struct page_pool *pool)
{

 if (!page_pool_put(pool))
  return;

 WARN(pool->alloc.count, "API usage violation");
 WARN(!ptr_ring_empty(&pool->ring), "ptr_ring is not empty");


 if (!__page_pool_safe_to_destroy(pool))
  __warn_in_flight(pool);

 ptr_ring_cleanup(&pool->ring, ((void*)0));

 if (pool->p.flags & PP_FLAG_DMA_MAP)
  put_device(pool->p.dev);

 kfree(pool);
}
