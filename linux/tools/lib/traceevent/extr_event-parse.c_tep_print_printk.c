
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_handle {TYPE_1__* printk_map; scalar_t__ printk_count; } ;
struct TYPE_2__ {int printk; int addr; } ;


 int printf (char*,int ,int ) ;
 int printk_map_init (struct tep_handle*) ;

void tep_print_printk(struct tep_handle *tep)
{
 int i;

 if (!tep->printk_map)
  printk_map_init(tep);

 for (i = 0; i < (int)tep->printk_count; i++) {
  printf("%016llx %s\n",
         tep->printk_map[i].addr,
         tep->printk_map[i].printk);
 }
}
