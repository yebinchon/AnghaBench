
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {unsigned long flags; unsigned long desc; struct resource* sibling; void* end; void* start; } ;
typedef void* resource_size_t ;
struct TYPE_2__ {struct resource* child; } ;


 unsigned long IORES_DESC_NONE ;
 int REGION_DISJOINT ;
 int REGION_INTERSECTS ;
 int REGION_MIXED ;
 TYPE_1__ iomem_resource ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int resource_lock ;
 scalar_t__ resource_overlaps (struct resource*,struct resource*) ;

int region_intersects(resource_size_t start, size_t size, unsigned long flags,
        unsigned long desc)
{
 struct resource res;
 int type = 0; int other = 0;
 struct resource *p;

 res.start = start;
 res.end = start + size - 1;

 read_lock(&resource_lock);
 for (p = iomem_resource.child; p ; p = p->sibling) {
  bool is_type = (((p->flags & flags) == flags) &&
    ((desc == IORES_DESC_NONE) ||
     (desc == p->desc)));

  if (resource_overlaps(p, &res))
   is_type ? type++ : other++;
 }
 read_unlock(&resource_lock);

 if (other == 0)
  return type ? REGION_INTERSECTS : REGION_DISJOINT;

 if (type)
  return REGION_MIXED;

 return REGION_DISJOINT;
}
