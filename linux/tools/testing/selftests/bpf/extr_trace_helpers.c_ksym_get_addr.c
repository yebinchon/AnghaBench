
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long addr; int name; } ;


 scalar_t__ strcmp (int ,char const*) ;
 int sym_cnt ;
 TYPE_1__* syms ;

long ksym_get_addr(const char *name)
{
 int i;

 for (i = 0; i < sym_cnt; i++) {
  if (strcmp(syms[i].name, name) == 0)
   return syms[i].addr;
 }

 return 0;
}
