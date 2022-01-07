
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int dummy; } ;
typedef int genpool_algo_t ;
typedef int dma_addr_t ;


 unsigned long gen_pool_alloc_algo (struct gen_pool*,size_t,int ,void*) ;
 int gen_pool_virt_to_phys (struct gen_pool*,unsigned long) ;

void *gen_pool_dma_alloc_algo(struct gen_pool *pool, size_t size,
  dma_addr_t *dma, genpool_algo_t algo, void *data)
{
 unsigned long vaddr;

 if (!pool)
  return ((void*)0);

 vaddr = gen_pool_alloc_algo(pool, size, algo, data);
 if (!vaddr)
  return ((void*)0);

 if (dma)
  *dma = gen_pool_virt_to_phys(pool, vaddr);

 return (void *)vaddr;
}
