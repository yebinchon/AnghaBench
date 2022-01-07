
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int iomem_resource ;
 int nfit_test_release_region (int *,int *,int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static void nfit_devres_release(struct device *dev, void *data)
{
 struct resource *res = *((struct resource **) data);

 WARN_ON(!nfit_test_release_region(((void*)0), &iomem_resource, res->start,
   resource_size(res)));
}
