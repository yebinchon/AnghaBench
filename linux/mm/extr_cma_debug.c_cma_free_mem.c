
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_mem {int n; int p; } ;
struct cma {scalar_t__ order_per_bit; } ;


 int cma_add_to_cma_mem_list (struct cma*,struct cma_mem*) ;
 struct cma_mem* cma_get_entry_from_list (struct cma*) ;
 int cma_release (struct cma*,int,int) ;
 int kfree (struct cma_mem*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int cma_free_mem(struct cma *cma, int count)
{
 struct cma_mem *mem = ((void*)0);

 while (count) {
  mem = cma_get_entry_from_list(cma);
  if (mem == ((void*)0))
   return 0;

  if (mem->n <= count) {
   cma_release(cma, mem->p, mem->n);
   count -= mem->n;
   kfree(mem);
  } else if (cma->order_per_bit == 0) {
   cma_release(cma, mem->p, count);
   mem->p += count;
   mem->n -= count;
   count = 0;
   cma_add_to_cma_mem_list(cma, mem);
  } else {
   pr_debug("cma: cannot release partial block when order_per_bit != 0\n");
   cma_add_to_cma_mem_list(cma, mem);
   break;
  }
 }

 return 0;

}
