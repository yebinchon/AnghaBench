
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs35l36_private {int dummy; } ;
struct cs35l36_pll_config {int freq; } ;


 int ARRAY_SIZE (struct cs35l36_pll_config const*) ;
 struct cs35l36_pll_config const* cs35l36_pll_sysclk ;

__attribute__((used)) static const struct cs35l36_pll_config *cs35l36_get_clk_config(
  struct cs35l36_private *cs35l36, int freq)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(cs35l36_pll_sysclk); i++) {
  if (cs35l36_pll_sysclk[i].freq == freq)
   return &cs35l36_pll_sysclk[i];
 }

 return ((void*)0);
}
