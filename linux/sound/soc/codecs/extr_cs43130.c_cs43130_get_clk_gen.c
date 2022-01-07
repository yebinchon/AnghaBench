
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs43130_clk_gen {int mclk_int; int fs; } ;



__attribute__((used)) static const struct cs43130_clk_gen *cs43130_get_clk_gen(int mclk_int, int fs,
  const struct cs43130_clk_gen *clk_gen_table, int len_clk_gen_table)
{
 int i;

 for (i = 0; i < len_clk_gen_table; i++) {
  if (clk_gen_table[i].mclk_int == mclk_int &&
      clk_gen_table[i].fs == fs)
   return &clk_gen_table[i];
 }

 return ((void*)0);
}
