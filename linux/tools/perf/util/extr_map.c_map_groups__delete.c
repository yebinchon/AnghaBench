
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int dummy; } ;


 int free (struct map_groups*) ;
 int map_groups__exit (struct map_groups*) ;
 int unwind__finish_access (struct map_groups*) ;

void map_groups__delete(struct map_groups *mg)
{
 map_groups__exit(mg);
 unwind__finish_access(mg);
 free(mg);
}
