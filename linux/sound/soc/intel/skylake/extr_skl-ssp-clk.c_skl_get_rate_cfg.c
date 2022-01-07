
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skl_clk_rate_cfg_table {unsigned long rate; } ;


 int SKL_MAX_CLK_RATES ;

__attribute__((used)) static struct skl_clk_rate_cfg_table *skl_get_rate_cfg(
  struct skl_clk_rate_cfg_table *rcfg,
    unsigned long rate)
{
 int i;

 for (i = 0; (i < SKL_MAX_CLK_RATES) && rcfg[i].rate; i++) {
  if (rcfg[i].rate == rate)
   return &rcfg[i];
 }

 return ((void*)0);
}
