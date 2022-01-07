
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct clk_aic32x4_pll_muldiv {unsigned long p; int r; int j; int d; } ;


 unsigned long AIC32X4_MAX_PLL_CLKIN ;
 int do_div (int,unsigned long) ;

__attribute__((used)) static int clk_aic32x4_pll_calc_muldiv(struct clk_aic32x4_pll_muldiv *settings,
   unsigned long rate, unsigned long parent_rate)
{
 u64 multiplier;

 settings->p = parent_rate / AIC32X4_MAX_PLL_CLKIN + 1;
 if (settings->p > 8)
  return -1;






 multiplier = (u64) rate * settings->p * 10000;
 do_div(multiplier, parent_rate);





 settings->r = ((u32) multiplier / 640000) + 1;
 if (settings->r > 4)
  return -1;
 do_div(multiplier, settings->r);




 if (multiplier < 10000)
  return -1;


 settings->j = (u32) multiplier / 10000;
 settings->d = (u32) multiplier % 10000;

 return 0;
}
