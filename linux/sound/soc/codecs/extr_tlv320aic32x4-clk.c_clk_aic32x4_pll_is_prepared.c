
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_aic32x4 {int regmap; } ;


 unsigned int AIC32X4_PLLEN ;
 int AIC32X4_PLLPR ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_aic32x4* to_clk_aic32x4 (struct clk_hw*) ;

__attribute__((used)) static int clk_aic32x4_pll_is_prepared(struct clk_hw *hw)
{
 struct clk_aic32x4 *pll = to_clk_aic32x4(hw);

 unsigned int val;
 int ret;

 ret = regmap_read(pll->regmap, AIC32X4_PLLPR, &val);
 if (ret < 0)
  return ret;

 return !!(val & AIC32X4_PLLEN);
}
