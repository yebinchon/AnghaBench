
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maps {int lock; } ;
struct map {int dummy; } ;


 int __maps__remove (struct maps*,struct map*) ;
 int down_write (int *) ;
 int up_write (int *) ;

void maps__remove(struct maps *maps, struct map *map)
{
 down_write(&maps->lock);
 __maps__remove(maps, map);
 up_write(&maps->lock);
}
