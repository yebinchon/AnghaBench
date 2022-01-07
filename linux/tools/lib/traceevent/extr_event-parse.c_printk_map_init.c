
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int printk_count; struct printk_list* printklist; struct printk_map* printk_map; } ;
struct printk_map {int addr; int printk; } ;
struct printk_list {struct printk_list* next; int addr; int printk; } ;


 int free (struct printk_list*) ;
 struct printk_map* malloc (int) ;
 int printk_cmp ;
 int qsort (struct printk_map*,int,int,int ) ;

__attribute__((used)) static int printk_map_init(struct tep_handle *tep)
{
 struct printk_list *printklist;
 struct printk_list *item;
 struct printk_map *printk_map;
 int i;

 printk_map = malloc(sizeof(*printk_map) * (tep->printk_count + 1));
 if (!printk_map)
  return -1;

 printklist = tep->printklist;

 i = 0;
 while (printklist) {
  printk_map[i].printk = printklist->printk;
  printk_map[i].addr = printklist->addr;
  i++;
  item = printklist;
  printklist = printklist->next;
  free(item);
 }

 qsort(printk_map, tep->printk_count, sizeof(*printk_map), printk_cmp);

 tep->printk_map = printk_map;
 tep->printklist = ((void*)0);

 return 0;
}
