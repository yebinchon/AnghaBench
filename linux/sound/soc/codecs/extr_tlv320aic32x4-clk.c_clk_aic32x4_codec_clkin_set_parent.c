
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;
struct clk_aic32x4 {int regmap; } ;


 int AIC32X4_CLKMUX ;
 int AIC32X4_CODEC_CLKIN_MASK ;
 int AIC32X4_CODEC_CLKIN_SHIFT ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct clk_aic32x4* to_clk_aic32x4 (struct clk_hw*) ;

__attribute__((used)) static int clk_aic32x4_codec_clkin_set_parent(struct clk_hw *hw, u8 index)
{
 struct clk_aic32x4 *mux = to_clk_aic32x4(hw);

 return regmap_update_bits(mux->regmap,
  AIC32X4_CLKMUX,
  AIC32X4_CODEC_CLKIN_MASK, index << AIC32X4_CODEC_CLKIN_SHIFT);
}
