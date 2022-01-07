
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int maps; } ;
struct map {int dummy; } ;
typedef int FILE ;


 int maps__fixup_overlappings (int *,struct map*,int *) ;

int map_groups__fixup_overlappings(struct map_groups *mg, struct map *map,
       FILE *fp)
{
 return maps__fixup_overlappings(&mg->maps, map, fp);
}
