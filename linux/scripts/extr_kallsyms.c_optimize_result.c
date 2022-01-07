
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** best_table ;
 int* best_table_len ;
 int compress_symbols (int*,int) ;
 int find_best_token () ;
 scalar_t__* token_profit ;

__attribute__((used)) static void optimize_result(void)
{
 int i, best;



 for (i = 255; i >= 0; i--) {



  if (!best_table_len[i]) {


   best = find_best_token();
   if (token_profit[best] == 0)
    break;


   best_table_len[i] = 2;
   best_table[i][0] = best & 0xFF;
   best_table[i][1] = (best >> 8) & 0xFF;


   compress_symbols(best_table[i], i);
  }
 }
}
