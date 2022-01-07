
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page_pool_params {int dummy; } ;
struct TYPE_2__ {int flags; int pool_size; scalar_t__ dma_dir; int dev; } ;
struct page_pool {TYPE_1__ p; int user_cnt; int pages_state_release_cnt; int ring; } ;


 scalar_t__ DMA_BIDIRECTIONAL ;
 scalar_t__ DMA_FROM_DEVICE ;
 int E2BIG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PP_FLAG_ALL ;
 int PP_FLAG_DMA_MAP ;
 int atomic_set (int *,int ) ;
 int get_device (int ) ;
 int memcpy (TYPE_1__*,struct page_pool_params const*,int) ;
 scalar_t__ ptr_ring_init (int *,unsigned int,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static int page_pool_init(struct page_pool *pool,
     const struct page_pool_params *params)
{
 unsigned int ring_qsize = 1024;

 memcpy(&pool->p, params, sizeof(pool->p));


 if (pool->p.flags & ~(PP_FLAG_ALL))
  return -EINVAL;

 if (pool->p.pool_size)
  ring_qsize = pool->p.pool_size;


 if (ring_qsize > 32768)
  return -E2BIG;





 if ((pool->p.dma_dir != DMA_FROM_DEVICE) &&
     (pool->p.dma_dir != DMA_BIDIRECTIONAL))
  return -EINVAL;

 if (ptr_ring_init(&pool->ring, ring_qsize, GFP_KERNEL) < 0)
  return -ENOMEM;

 atomic_set(&pool->pages_state_release_cnt, 0);


 refcount_set(&pool->user_cnt, 1);

 if (pool->p.flags & PP_FLAG_DMA_MAP)
  get_device(pool->p.dev);

 return 0;
}
