
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* sym; int percpu_absolute; } ;


 int percpu_range ;
 scalar_t__ symbol_in_range (TYPE_1__*,int *,int) ;
 TYPE_1__* table ;
 unsigned int table_cnt ;

__attribute__((used)) static void make_percpus_absolute(void)
{
 unsigned int i;

 for (i = 0; i < table_cnt; i++)
  if (symbol_in_range(&table[i], &percpu_range, 1)) {





   table[i].sym[0] = 'A';
   table[i].percpu_absolute = 1;
  }
}
