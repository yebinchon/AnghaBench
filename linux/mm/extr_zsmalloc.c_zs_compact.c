
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long pages_compacted; } ;
struct zs_pool {TYPE_1__ stats; struct size_class** size_class; } ;
struct size_class {int index; } ;


 int ZS_SIZE_CLASSES ;
 int __zs_compact (struct zs_pool*,struct size_class*) ;

unsigned long zs_compact(struct zs_pool *pool)
{
 int i;
 struct size_class *class;

 for (i = ZS_SIZE_CLASSES - 1; i >= 0; i--) {
  class = pool->size_class[i];
  if (!class)
   continue;
  if (class->index != i)
   continue;
  __zs_compact(pool, class);
 }

 return pool->stats.pages_compacted;
}
