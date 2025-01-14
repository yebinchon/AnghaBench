
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* token_profit ;

__attribute__((used)) static int find_best_token(void)
{
 int i, best, bestprofit;

 bestprofit=-10000;
 best = 0;

 for (i = 0; i < 0x10000; i++) {
  if (token_profit[i] > bestprofit) {
   best = i;
   bestprofit = token_profit[i];
  }
 }
 return best;
}
