
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct region_devres {void* n; void* start; struct resource* parent; } ;
struct device {int dummy; } ;
typedef void* resource_size_t ;


 int GFP_KERNEL ;
 struct resource* __request_region (struct resource*,void*,void*,char const*,int ) ;
 int devm_region_release ;
 int devres_add (struct device*,struct region_devres*) ;
 struct region_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct region_devres*) ;

struct resource *
__devm_request_region(struct device *dev, struct resource *parent,
        resource_size_t start, resource_size_t n, const char *name)
{
 struct region_devres *dr = ((void*)0);
 struct resource *res;

 dr = devres_alloc(devm_region_release, sizeof(struct region_devres),
     GFP_KERNEL);
 if (!dr)
  return ((void*)0);

 dr->parent = parent;
 dr->start = start;
 dr->n = n;

 res = __request_region(parent, start, n, name, 0);
 if (res)
  devres_add(dev, dr);
 else
  devres_free(dr);

 return res;
}
