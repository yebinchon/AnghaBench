
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int data; int algo; } ;
typedef int dma_addr_t ;


 void* gen_pool_dma_alloc_algo (struct gen_pool*,size_t,int *,int ,int ) ;

void *gen_pool_dma_alloc(struct gen_pool *pool, size_t size, dma_addr_t *dma)
{
 return gen_pool_dma_alloc_algo(pool, size, dma, pool->algo, pool->data);
}
