
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long addr; } ;


 unsigned long long relative_base ;
 int symbol_absolute (TYPE_1__*) ;
 TYPE_1__* table ;
 unsigned int table_cnt ;

__attribute__((used)) static void record_relative_base(void)
{
 unsigned int i;

 relative_base = -1ULL;
 for (i = 0; i < table_cnt; i++)
  if (!symbol_absolute(&table[i]) &&
      table[i].addr < relative_base)
   relative_base = table[i].addr;
}
