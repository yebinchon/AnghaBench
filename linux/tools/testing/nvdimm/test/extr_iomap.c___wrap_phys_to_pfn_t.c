
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_test_resource {int dummy; } ;
typedef int phys_addr_t ;
typedef int pfn_t ;


 unsigned long PFN_MAP ;
 struct nfit_test_resource* get_nfit_res (int ) ;
 int phys_to_pfn_t (int ,unsigned long) ;

pfn_t __wrap_phys_to_pfn_t(phys_addr_t addr, unsigned long flags)
{
 struct nfit_test_resource *nfit_res = get_nfit_res(addr);

 if (nfit_res)
  flags &= ~PFN_MAP;
        return phys_to_pfn_t(addr, flags);
}
