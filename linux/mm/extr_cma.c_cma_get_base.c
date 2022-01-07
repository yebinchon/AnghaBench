
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma {int base_pfn; } ;
typedef int phys_addr_t ;


 int PFN_PHYS (int ) ;

phys_addr_t cma_get_base(const struct cma *cma)
{
 return PFN_PHYS(cma->base_pfn);
}
