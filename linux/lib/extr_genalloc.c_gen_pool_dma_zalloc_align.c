
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genpool_data_align {int align; } ;
struct gen_pool {int dummy; } ;
typedef int dma_addr_t ;


 void* gen_pool_dma_zalloc_algo (struct gen_pool*,size_t,int *,int ,struct genpool_data_align*) ;
 int gen_pool_first_fit_align ;

void *gen_pool_dma_zalloc_align(struct gen_pool *pool, size_t size,
  dma_addr_t *dma, int align)
{
 struct genpool_data_align data = { .align = align };

 return gen_pool_dma_zalloc_algo(pool, size, dma,
   gen_pool_first_fit_align, &data);
}
