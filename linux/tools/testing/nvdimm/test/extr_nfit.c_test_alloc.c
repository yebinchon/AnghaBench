
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_test {int dummy; } ;
struct genpool_data_align {int align; } ;
typedef unsigned long dma_addr_t ;


 size_t DIMM_SIZE ;
 int SZ_128M ;
 void* __test_alloc (struct nfit_test*,size_t,unsigned long*,void*) ;
 unsigned long gen_pool_alloc_algo (int ,size_t,int ,struct genpool_data_align*) ;
 int gen_pool_first_fit_align ;
 int nfit_pool ;
 void* vmalloc (size_t) ;

__attribute__((used)) static void *test_alloc(struct nfit_test *t, size_t size, dma_addr_t *dma)
{
 struct genpool_data_align data = {
  .align = SZ_128M,
 };
 void *buf = vmalloc(size);

 if (size >= DIMM_SIZE)
  *dma = gen_pool_alloc_algo(nfit_pool, size,
    gen_pool_first_fit_align, &data);
 else
  *dma = (unsigned long) buf;
 return __test_alloc(t, size, dma, buf);
}
