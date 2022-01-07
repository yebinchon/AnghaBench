
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_aic32x4_pll_muldiv {unsigned int r; unsigned int p; unsigned int j; unsigned int d; } ;
struct clk_aic32x4 {int regmap; } ;


 int AIC32X4_PLLDLSB ;
 int AIC32X4_PLLDMSB ;
 int AIC32X4_PLLJ ;
 int AIC32X4_PLLPR ;
 unsigned int AIC32X4_PLL_P_MASK ;
 unsigned int AIC32X4_PLL_P_SHIFT ;
 unsigned int AIC32X4_PLL_R_MASK ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int clk_aic32x4_pll_get_muldiv(struct clk_aic32x4 *pll,
   struct clk_aic32x4_pll_muldiv *settings)
{

 unsigned int val;
 int ret;

 ret = regmap_read(pll->regmap, AIC32X4_PLLPR, &val);
 if (ret < 0)
  return ret;
 settings->r = val & AIC32X4_PLL_R_MASK;
 settings->p = (val & AIC32X4_PLL_P_MASK) >> AIC32X4_PLL_P_SHIFT;

 ret = regmap_read(pll->regmap, AIC32X4_PLLJ, &val);
 if (ret < 0)
  return ret;
 settings->j = val;

 ret = regmap_read(pll->regmap, AIC32X4_PLLDMSB, &val);
 if (ret < 0)
  return ret;
 settings->d = val << 8;

 ret = regmap_read(pll->regmap, AIC32X4_PLLDLSB, &val);
 if (ret < 0)
  return ret;
 settings->d |= val;

 return 0;
}
