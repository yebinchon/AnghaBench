
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int* bclk_sel_table ;

__attribute__((used)) static int max98927_get_bclk_sel(int bclk)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(bclk_sel_table); i++) {
  if (bclk_sel_table[i] == bclk)
   return i + 2;
 }
 return 0;
}
