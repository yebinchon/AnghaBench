
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int func_count; struct func_list* funclist; struct func_map* func_map; } ;
struct func_map {int * mod; scalar_t__ addr; int * func; } ;
struct func_list {struct func_list* next; int * mod; scalar_t__ addr; int * func; } ;


 int free (struct func_list*) ;
 int func_cmp ;
 struct func_map* malloc (int) ;
 int qsort (struct func_map*,int,int,int ) ;

__attribute__((used)) static int func_map_init(struct tep_handle *tep)
{
 struct func_list *funclist;
 struct func_list *item;
 struct func_map *func_map;
 int i;

 func_map = malloc(sizeof(*func_map) * (tep->func_count + 1));
 if (!func_map)
  return -1;

 funclist = tep->funclist;

 i = 0;
 while (funclist) {
  func_map[i].func = funclist->func;
  func_map[i].addr = funclist->addr;
  func_map[i].mod = funclist->mod;
  i++;
  item = funclist;
  funclist = funclist->next;
  free(item);
 }

 qsort(func_map, tep->func_count, sizeof(*func_map), func_cmp);




 func_map[tep->func_count].func = ((void*)0);
 func_map[tep->func_count].addr = 0;
 func_map[tep->func_count].mod = ((void*)0);

 tep->func_map = func_map;
 tep->funclist = ((void*)0);

 return 0;
}
