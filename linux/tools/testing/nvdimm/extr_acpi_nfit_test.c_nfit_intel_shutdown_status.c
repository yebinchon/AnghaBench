
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_mem {int dirty_shutdown; int flags; } ;


 int NFIT_MEM_DIRTY_COUNT ;
 int set_bit (int ,int *) ;

void nfit_intel_shutdown_status(struct nfit_mem *nfit_mem)
{
 set_bit(NFIT_MEM_DIRTY_COUNT, &nfit_mem->flags);
 nfit_mem->dirty_shutdown = 42;
}
