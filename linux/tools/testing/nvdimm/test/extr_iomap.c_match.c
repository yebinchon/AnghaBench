
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ start; } ;
struct device {int dummy; } ;
typedef scalar_t__ resource_size_t ;



__attribute__((used)) static int match(struct device *dev, void *__res, void *match_data)
{
 struct resource *res = *((struct resource **) __res);
 resource_size_t start = *((resource_size_t *) match_data);

 return res->start == start;
}
