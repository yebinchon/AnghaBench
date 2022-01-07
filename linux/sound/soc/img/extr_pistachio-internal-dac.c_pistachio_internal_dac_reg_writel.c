
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regmap {int dummy; } ;


 int PISTACHIO_INTERNAL_DAC_GTI_CTRL ;
 int PISTACHIO_INTERNAL_DAC_GTI_CTRL_ADDR_MASK ;
 int PISTACHIO_INTERNAL_DAC_GTI_CTRL_ADDR_SHIFT ;
 int PISTACHIO_INTERNAL_DAC_GTI_CTRL_WDATA_MASK ;
 int PISTACHIO_INTERNAL_DAC_GTI_CTRL_WDATA_SHIFT ;
 int PISTACHIO_INTERNAL_DAC_GTI_CTRL_WE_MASK ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;

__attribute__((used)) static void pistachio_internal_dac_reg_writel(struct regmap *top_regs,
      u32 val, u32 reg)
{
 regmap_update_bits(top_regs, PISTACHIO_INTERNAL_DAC_GTI_CTRL,
   PISTACHIO_INTERNAL_DAC_GTI_CTRL_ADDR_MASK,
   reg << PISTACHIO_INTERNAL_DAC_GTI_CTRL_ADDR_SHIFT);

 regmap_update_bits(top_regs, PISTACHIO_INTERNAL_DAC_GTI_CTRL,
   PISTACHIO_INTERNAL_DAC_GTI_CTRL_WDATA_MASK,
   val << PISTACHIO_INTERNAL_DAC_GTI_CTRL_WDATA_SHIFT);

 regmap_update_bits(top_regs, PISTACHIO_INTERNAL_DAC_GTI_CTRL,
   PISTACHIO_INTERNAL_DAC_GTI_CTRL_WE_MASK,
   PISTACHIO_INTERNAL_DAC_GTI_CTRL_WE_MASK);

 regmap_update_bits(top_regs, PISTACHIO_INTERNAL_DAC_GTI_CTRL,
   PISTACHIO_INTERNAL_DAC_GTI_CTRL_WE_MASK, 0);
}
