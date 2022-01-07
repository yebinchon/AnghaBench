
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int regmap; int dev; } ;


 int AFE_DAC_CON0 ;
 int AFE_DAC_CON0_AFE_ON ;
 int ASYS_TOP_CON ;
 int ASYS_TOP_CON_ASYS_TIMING_ON ;
 int PWR1_ASM_CON1 ;
 int PWR1_ASM_CON1_INIT_VAL ;
 int PWR2_ASM_CON1 ;
 int PWR2_ASM_CON1_INIT_VAL ;
 int dev_err (int ,char*,int) ;
 int mt2701_afe_enable_audsys (struct mtk_base_afe*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

int mt2701_afe_enable_clock(struct mtk_base_afe *afe)
{
 int ret;


 ret = mt2701_afe_enable_audsys(afe);
 if (ret) {
  dev_err(afe->dev, "failed to enable audio system %d\n", ret);
  return ret;
 }

 regmap_update_bits(afe->regmap, ASYS_TOP_CON,
      ASYS_TOP_CON_ASYS_TIMING_ON,
      ASYS_TOP_CON_ASYS_TIMING_ON);
 regmap_update_bits(afe->regmap, AFE_DAC_CON0,
      AFE_DAC_CON0_AFE_ON,
      AFE_DAC_CON0_AFE_ON);


 regmap_write(afe->regmap, PWR1_ASM_CON1, PWR1_ASM_CON1_INIT_VAL);
 regmap_write(afe->regmap, PWR2_ASM_CON1, PWR2_ASM_CON1_INIT_VAL);

 return 0;
}
