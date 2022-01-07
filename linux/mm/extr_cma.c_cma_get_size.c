
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma {unsigned long count; } ;


 unsigned long PAGE_SHIFT ;

unsigned long cma_get_size(const struct cma *cma)
{
 return cma->count << PAGE_SHIFT;
}
