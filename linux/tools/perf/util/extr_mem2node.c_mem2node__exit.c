
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem2node {int entries; } ;


 int zfree (int *) ;

void mem2node__exit(struct mem2node *map)
{
 zfree(&map->entries);
}
