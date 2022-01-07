
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int maps; } ;
typedef int FILE ;


 int maps__fprintf_task (int *,int,int *) ;

__attribute__((used)) static int map_groups__fprintf_task(struct map_groups *mg, int indent, FILE *fp)
{
 return maps__fprintf_task(&mg->maps, indent, fp);
}
