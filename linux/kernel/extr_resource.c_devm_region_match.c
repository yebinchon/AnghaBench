
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct region_devres {scalar_t__ parent; scalar_t__ start; scalar_t__ n; } ;
struct device {int dummy; } ;



__attribute__((used)) static int devm_region_match(struct device *dev, void *res, void *match_data)
{
 struct region_devres *this = res, *match = match_data;

 return this->parent == match->parent &&
  this->start == match->start && this->n == match->n;
}
