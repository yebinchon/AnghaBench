
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int len; unsigned int* sym; } ;


 unsigned int** best_table ;
 int* best_table_len ;
 TYPE_1__* table ;
 unsigned int table_cnt ;

__attribute__((used)) static void insert_real_symbols_in_table(void)
{
 unsigned int i, j, c;

 for (i = 0; i < table_cnt; i++) {
  for (j = 0; j < table[i].len; j++) {
   c = table[i].sym[j];
   best_table[c][0]=c;
   best_table_len[c]=1;
  }
 }
}
