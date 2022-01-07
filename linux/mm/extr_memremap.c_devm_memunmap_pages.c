
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct dev_pagemap {int dummy; } ;


 int devm_memremap_pages_release ;
 int devm_release_action (struct device*,int ,struct dev_pagemap*) ;

void devm_memunmap_pages(struct device *dev, struct dev_pagemap *pgmap)
{
 devm_release_action(dev, devm_memremap_pages_release, pgmap);
}
