
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {unsigned long start; } ;
struct dev_pagemap {struct resource res; } ;


 unsigned long PAGE_SHIFT ;
 unsigned long resource_size (struct resource const*) ;

__attribute__((used)) static unsigned long pfn_end(struct dev_pagemap *pgmap)
{
 const struct resource *res = &pgmap->res;

 return (res->start + resource_size(res)) >> PAGE_SHIFT;
}
