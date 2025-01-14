
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rk_pdm_dev {int clk; } ;
struct TYPE_3__ {unsigned int sr; unsigned int clk_out; unsigned int clk; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 unsigned int PDM_SIGNOFF_CLK_RATE ;
 unsigned int clk_round_rate (int ,unsigned int) ;
 TYPE_1__* clkref ;

__attribute__((used)) static unsigned int get_pdm_clk(struct rk_pdm_dev *pdm, unsigned int sr,
    unsigned int *clk_src, unsigned int *clk_out)
{
 unsigned int i, count, clk, div, rate;

 clk = 0;
 if (!sr)
  return clk;

 count = ARRAY_SIZE(clkref);
 for (i = 0; i < count; i++) {
  if (sr % clkref[i].sr)
   continue;
  div = sr / clkref[i].sr;
  if ((div & (div - 1)) == 0) {
   *clk_out = clkref[i].clk_out;
   rate = clk_round_rate(pdm->clk, clkref[i].clk);
   if (rate != clkref[i].clk)
    continue;
   clk = clkref[i].clk;
   *clk_src = clkref[i].clk;
   break;
  }
 }

 if (!clk) {
  clk = clk_round_rate(pdm->clk, PDM_SIGNOFF_CLK_RATE);
  *clk_src = clk;
 }
 return clk;
}
