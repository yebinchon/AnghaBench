
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_test_resource {int dummy; } ;


 struct nfit_test_resource* get_nfit_res (long) ;
 void memunmap (void*) ;

void __wrap_memunmap(void *addr)
{
 struct nfit_test_resource *nfit_res = get_nfit_res((long) addr);

 if (nfit_res)
  return;
 return memunmap(addr);
}
