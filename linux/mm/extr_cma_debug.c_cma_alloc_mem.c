
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct cma_mem {int n; struct page* p; } ;
struct cma {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int cma_add_to_cma_mem_list (struct cma*,struct cma_mem*) ;
 struct page* cma_alloc (struct cma*,int,int ,int) ;
 int kfree (struct cma_mem*) ;
 struct cma_mem* kzalloc (int,int ) ;

__attribute__((used)) static int cma_alloc_mem(struct cma *cma, int count)
{
 struct cma_mem *mem;
 struct page *p;

 mem = kzalloc(sizeof(*mem), GFP_KERNEL);
 if (!mem)
  return -ENOMEM;

 p = cma_alloc(cma, count, 0, 0);
 if (!p) {
  kfree(mem);
  return -ENOMEM;
 }

 mem->p = p;
 mem->n = count;

 cma_add_to_cma_mem_list(cma, mem);

 return 0;
}
