
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;


 scalar_t__ get_nfit_res (int ) ;
 int insert_resource (struct resource*,struct resource*) ;

int __wrap_insert_resource(struct resource *parent, struct resource *res)
{
 if (get_nfit_res(res->start))
  return 0;
 return insert_resource(parent, res);
}
