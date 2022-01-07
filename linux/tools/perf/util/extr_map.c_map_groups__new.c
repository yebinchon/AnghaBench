
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int dummy; } ;
struct machine {int dummy; } ;


 int map_groups__init (struct map_groups*,struct machine*) ;
 struct map_groups* zalloc (int) ;

struct map_groups *map_groups__new(struct machine *machine)
{
 struct map_groups *mg = zalloc(sizeof(*mg));

 if (mg != ((void*)0))
  map_groups__init(mg, machine);

 return mg;
}
