
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int maps; } ;


 int maps__exit (int *) ;

void map_groups__exit(struct map_groups *mg)
{
 maps__exit(&mg->maps);
}
