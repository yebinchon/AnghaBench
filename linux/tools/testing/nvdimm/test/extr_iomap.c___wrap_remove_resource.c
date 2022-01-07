
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;


 scalar_t__ get_nfit_res (int ) ;
 int remove_resource (struct resource*) ;

int __wrap_remove_resource(struct resource *res)
{
 if (get_nfit_res(res->start))
  return 0;
 return remove_resource(res);
}
