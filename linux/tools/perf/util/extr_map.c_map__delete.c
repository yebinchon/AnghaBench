
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dummy; } ;


 int free (struct map*) ;
 int map__exit (struct map*) ;

void map__delete(struct map *map)
{
 map__exit(map);
 free(map);
}
