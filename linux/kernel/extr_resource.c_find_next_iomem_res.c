
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {scalar_t__ start; scalar_t__ end; unsigned long flags; unsigned long desc; } ;
typedef scalar_t__ resource_size_t ;
struct TYPE_2__ {struct resource* child; } ;


 int EINVAL ;
 int ENODEV ;
 unsigned long IORES_DESC_NONE ;
 TYPE_1__ iomem_resource ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 struct resource* next_resource (struct resource*,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int resource_lock ;

__attribute__((used)) static int find_next_iomem_res(resource_size_t start, resource_size_t end,
          unsigned long flags, unsigned long desc,
          bool first_lvl, struct resource *res)
{
 bool siblings_only = 1;
 struct resource *p;

 if (!res)
  return -EINVAL;

 if (start >= end)
  return -EINVAL;

 read_lock(&resource_lock);

 for (p = iomem_resource.child; p; p = next_resource(p, siblings_only)) {

  if (p->start > end) {
   p = ((void*)0);
   break;
  }


  if (p->end < start)
   continue;






  siblings_only = first_lvl;

  if ((p->flags & flags) != flags)
   continue;
  if ((desc != IORES_DESC_NONE) && (desc != p->desc))
   continue;


  break;
 }

 if (p) {

  res->start = max(start, p->start);
  res->end = min(end, p->end);
  res->flags = p->flags;
  res->desc = p->desc;
 }

 read_unlock(&resource_lock);
 return p ? 0 : -ENODEV;
}
