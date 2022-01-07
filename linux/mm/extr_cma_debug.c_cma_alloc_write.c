
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cma {int dummy; } ;


 int cma_alloc_mem (struct cma*,int) ;

__attribute__((used)) static int cma_alloc_write(void *data, u64 val)
{
 int pages = val;
 struct cma *cma = data;

 return cma_alloc_mem(cma, pages);
}
