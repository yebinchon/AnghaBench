
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int maps; } ;
typedef int FILE ;


 size_t maps__fprintf (int *,int *) ;

size_t map_groups__fprintf(struct map_groups *mg, FILE *fp)
{
 return maps__fprintf(&mg->maps, fp);
}
