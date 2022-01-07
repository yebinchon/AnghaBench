
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int resource_size_t ;


 int __release_region (struct resource*,int ,int ) ;
 int nfit_test_release_region (int *,struct resource*,int ,int ) ;

void __wrap___release_region(struct resource *parent, resource_size_t start,
  resource_size_t n)
{
 if (!nfit_test_release_region(((void*)0), parent, start, n))
  __release_region(parent, start, n);
}
