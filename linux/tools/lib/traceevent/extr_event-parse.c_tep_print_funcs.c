
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_handle {TYPE_1__* func_map; scalar_t__ func_count; } ;
struct TYPE_2__ {char* mod; int func; int addr; } ;


 int func_map_init (struct tep_handle*) ;
 int printf (char*,...) ;

void tep_print_funcs(struct tep_handle *tep)
{
 int i;

 if (!tep->func_map)
  func_map_init(tep);

 for (i = 0; i < (int)tep->func_count; i++) {
  printf("%016llx %s",
         tep->func_map[i].addr,
         tep->func_map[i].func);
  if (tep->func_map[i].mod)
   printf(" [%s]\n", tep->func_map[i].mod);
  else
   printf("\n");
 }
}
