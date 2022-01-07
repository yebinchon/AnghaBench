
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
typedef int resource_size_t ;


 int __devm_release_region (struct device*,struct resource*,int ,int ) ;
 int nfit_test_release_region (struct device*,struct resource*,int ,int ) ;

void __wrap___devm_release_region(struct device *dev, struct resource *parent,
  resource_size_t start, resource_size_t n)
{
 if (!nfit_test_release_region(dev, parent, start, n))
  __devm_release_region(dev, parent, start, n);
}
