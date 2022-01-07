
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dso; int rb_node; } ;


 int BUG_ON (int) ;
 int RB_EMPTY_NODE (int *) ;
 int dso__zput (int ) ;

__attribute__((used)) static void map__exit(struct map *map)
{
 BUG_ON(!RB_EMPTY_NODE(&map->rb_node));
 dso__zput(map->dso);
}
