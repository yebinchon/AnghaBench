
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gen_pool {int name; } ;
struct device {int dummy; } ;


 int strcmp (int ,void*) ;

__attribute__((used)) static int devm_gen_pool_match(struct device *dev, void *res, void *data)
{
 struct gen_pool **p = res;


 if (!data && !(*p)->name)
  return 1;

 if (!data || !(*p)->name)
  return 0;

 return !strcmp((*p)->name, data);
}
