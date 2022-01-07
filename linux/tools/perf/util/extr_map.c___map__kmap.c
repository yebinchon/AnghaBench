
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct map {TYPE_1__* dso; } ;
struct kmap {int dummy; } ;
struct TYPE_2__ {int kernel; } ;



struct kmap *__map__kmap(struct map *map)
{
 if (!map->dso || !map->dso->kernel)
  return ((void*)0);
 return (struct kmap *)(map + 1);
}
