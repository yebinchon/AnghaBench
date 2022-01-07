
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int dummy; } ;
struct device {int dummy; } ;


 int devm_gen_pool_match ;
 int devm_gen_pool_release ;
 struct gen_pool** devres_find (struct device*,int ,int ,void*) ;

struct gen_pool *gen_pool_get(struct device *dev, const char *name)
{
 struct gen_pool **p;

 p = devres_find(dev, devm_gen_pool_release, devm_gen_pool_match,
   (void *)name);
 if (!p)
  return ((void*)0);
 return *p;
}
