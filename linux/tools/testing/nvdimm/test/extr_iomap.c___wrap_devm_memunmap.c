
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_test_resource {int dummy; } ;
struct device {int dummy; } ;


 void devm_memunmap (struct device*,void*) ;
 struct nfit_test_resource* get_nfit_res (long) ;

void __wrap_devm_memunmap(struct device *dev, void *addr)
{
 struct nfit_test_resource *nfit_res = get_nfit_res((long) addr);

 if (nfit_res)
  return;
 return devm_memunmap(dev, addr);
}
