
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dev_pagemap {int dummy; } ;


 void* ERR_PTR (int) ;
 scalar_t__ IS_ERR (void*) ;
 int dev_to_node (struct device*) ;
 int devm_add_action_or_reset (struct device*,int ,struct dev_pagemap*) ;
 int devm_memremap_pages_release ;
 void* memremap_pages (struct dev_pagemap*,int ) ;

void *devm_memremap_pages(struct device *dev, struct dev_pagemap *pgmap)
{
 int error;
 void *ret;

 ret = memremap_pages(pgmap, dev_to_node(dev));
 if (IS_ERR(ret))
  return ret;

 error = devm_add_action_or_reset(dev, devm_memremap_pages_release,
   pgmap);
 if (error)
  return ERR_PTR(error);
 return ret;
}
