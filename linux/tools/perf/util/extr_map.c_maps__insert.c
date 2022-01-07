
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maps {int lock; } ;
struct map {int dummy; } ;


 int __maps__insert (struct maps*,struct map*) ;
 int __maps__insert_name (struct maps*,struct map*) ;
 int down_write (int *) ;
 int up_write (int *) ;

void maps__insert(struct maps *maps, struct map *map)
{
 down_write(&maps->lock);
 __maps__insert(maps, map);
 __maps__insert_name(maps, map);
 up_write(&maps->lock);
}
