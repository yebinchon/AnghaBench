
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pistachio_internal_dac {int regmap; } ;


 int PISTACHIO_INTERNAL_DAC_CTRL ;
 int PISTACHIO_INTERNAL_DAC_CTRL_PWRDN_MASK ;
 int PISTACHIO_INTERNAL_DAC_PWR ;
 int PISTACHIO_INTERNAL_DAC_PWR_MASK ;
 int PISTACHIO_INTERNAL_DAC_SRST ;
 int PISTACHIO_INTERNAL_DAC_SRST_MASK ;
 int pistachio_internal_dac_reg_writel (int ,int ,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void pistachio_internal_dac_pwr_on(struct pistachio_internal_dac *dac)
{
 regmap_update_bits(dac->regmap, PISTACHIO_INTERNAL_DAC_SRST,
   PISTACHIO_INTERNAL_DAC_SRST_MASK,
   PISTACHIO_INTERNAL_DAC_SRST_MASK);

 regmap_update_bits(dac->regmap, PISTACHIO_INTERNAL_DAC_SRST,
   PISTACHIO_INTERNAL_DAC_SRST_MASK, 0);

 pistachio_internal_dac_reg_writel(dac->regmap,
     PISTACHIO_INTERNAL_DAC_PWR_MASK,
     PISTACHIO_INTERNAL_DAC_PWR);

 regmap_update_bits(dac->regmap, PISTACHIO_INTERNAL_DAC_CTRL,
   PISTACHIO_INTERNAL_DAC_CTRL_PWRDN_MASK, 0);
}
