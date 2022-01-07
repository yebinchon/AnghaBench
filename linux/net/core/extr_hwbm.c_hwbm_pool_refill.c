
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbm_pool {int frag_size; scalar_t__ (* construct ) (struct hwbm_pool*,void*) ;} ;
typedef int gfp_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int hwbm_buf_free (struct hwbm_pool*,void*) ;
 void* kmalloc (int,int ) ;
 scalar_t__ likely (int) ;
 void* netdev_alloc_frag (int) ;
 scalar_t__ stub1 (struct hwbm_pool*,void*) ;

int hwbm_pool_refill(struct hwbm_pool *bm_pool, gfp_t gfp)
{
 int frag_size = bm_pool->frag_size;
 void *buf;

 if (likely(frag_size <= PAGE_SIZE))
  buf = netdev_alloc_frag(frag_size);
 else
  buf = kmalloc(frag_size, gfp);

 if (!buf)
  return -ENOMEM;

 if (bm_pool->construct)
  if (bm_pool->construct(bm_pool, buf)) {
   hwbm_buf_free(bm_pool, buf);
   return -ENOMEM;
  }

 return 0;
}
