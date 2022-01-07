
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct clk_hw {int dummy; } ;
struct clk_aic32x4 {int regmap; } ;


 int AIC32X4_PLLPR ;
 unsigned int AIC32X4_PLL_CLKIN_MASK ;
 unsigned int AIC32X4_PLL_CLKIN_SHIFT ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct clk_aic32x4* to_clk_aic32x4 (struct clk_hw*) ;

__attribute__((used)) static u8 clk_aic32x4_pll_get_parent(struct clk_hw *hw)
{
 struct clk_aic32x4 *pll = to_clk_aic32x4(hw);
 unsigned int val;

 regmap_read(pll->regmap, AIC32X4_PLLPR, &val);

 return (val & AIC32X4_PLL_CLKIN_MASK) >> AIC32X4_PLL_CLKIN_SHIFT;
}
