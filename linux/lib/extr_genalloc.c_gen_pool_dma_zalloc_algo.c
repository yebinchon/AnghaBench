
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int dummy; } ;
typedef int genpool_algo_t ;
typedef int dma_addr_t ;


 void* gen_pool_dma_alloc_algo (struct gen_pool*,size_t,int *,int ,void*) ;
 int memset (void*,int ,size_t) ;

void *gen_pool_dma_zalloc_algo(struct gen_pool *pool, size_t size,
  dma_addr_t *dma, genpool_algo_t algo, void *data)
{
 void *vaddr = gen_pool_dma_alloc_algo(pool, size, dma, algo, data);

 if (vaddr)
  memset(vaddr, 0, size);

 return vaddr;
}
