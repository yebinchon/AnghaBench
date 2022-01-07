
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;
struct clk_aic32x4 {int reg; int regmap; } ;


 int AIC32X4_DIVEN ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct clk_aic32x4* to_clk_aic32x4 (struct clk_hw*) ;

__attribute__((used)) static void clk_aic32x4_div_unprepare(struct clk_hw *hw)
{
 struct clk_aic32x4 *div = to_clk_aic32x4(hw);

 regmap_update_bits(div->regmap, div->reg,
   AIC32X4_DIVEN, 0);
}
