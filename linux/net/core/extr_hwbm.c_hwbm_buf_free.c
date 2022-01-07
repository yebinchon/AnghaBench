
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwbm_pool {scalar_t__ frag_size; } ;


 scalar_t__ PAGE_SIZE ;
 int kfree (void*) ;
 scalar_t__ likely (int) ;
 int skb_free_frag (void*) ;

void hwbm_buf_free(struct hwbm_pool *bm_pool, void *buf)
{
 if (likely(bm_pool->frag_size <= PAGE_SIZE))
  skb_free_frag(buf);
 else
  kfree(buf);
}
