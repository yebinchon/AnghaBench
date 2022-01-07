
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int maps; } ;
struct map {int dummy; } ;


 struct map* maps__first (int *) ;

struct map *map_groups__first(struct map_groups *mg)
{
 return maps__first(&mg->maps);
}
