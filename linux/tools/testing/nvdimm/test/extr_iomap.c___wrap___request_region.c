
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int resource_size_t ;


 struct resource* nfit_test_request_region (int *,struct resource*,int ,int ,char const*,int) ;

struct resource *__wrap___request_region(struct resource *parent,
  resource_size_t start, resource_size_t n, const char *name,
  int flags)
{
 return nfit_test_request_region(((void*)0), parent, start, n, name, flags);
}
