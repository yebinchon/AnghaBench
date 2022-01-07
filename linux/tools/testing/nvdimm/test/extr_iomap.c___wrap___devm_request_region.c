
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;
typedef int resource_size_t ;


 struct resource* nfit_test_request_region (struct device*,struct resource*,int ,int ,char const*,int ) ;

struct resource *__wrap___devm_request_region(struct device *dev,
  struct resource *parent, resource_size_t start,
  resource_size_t n, const char *name)
{
 if (!dev)
  return ((void*)0);
 return nfit_test_request_region(dev, parent, start, n, name, 0);
}
