
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clk_aic32x4_pll_muldiv {int r; int j; int d; int p; } ;


 scalar_t__ DIV_ROUND_UP_ULL (int,int) ;

__attribute__((used)) static unsigned long clk_aic32x4_pll_calc_rate(
   struct clk_aic32x4_pll_muldiv *settings,
   unsigned long parent_rate)
{
 u64 rate;




 rate = (u64) parent_rate * settings->r *
    ((settings->j * 10000) + settings->d);

 return (unsigned long) DIV_ROUND_UP_ULL(rate, settings->p * 10000);
}
