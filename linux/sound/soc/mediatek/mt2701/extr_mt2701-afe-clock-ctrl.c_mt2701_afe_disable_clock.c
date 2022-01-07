
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int regmap; } ;


 int AFE_DAC_CON0 ;
 int AFE_DAC_CON0_AFE_ON ;
 int ASYS_TOP_CON ;
 int ASYS_TOP_CON_ASYS_TIMING_ON ;
 int mt2701_afe_disable_audsys (struct mtk_base_afe*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

int mt2701_afe_disable_clock(struct mtk_base_afe *afe)
{
 regmap_update_bits(afe->regmap, ASYS_TOP_CON,
      ASYS_TOP_CON_ASYS_TIMING_ON, 0);
 regmap_update_bits(afe->regmap, AFE_DAC_CON0,
      AFE_DAC_CON0_AFE_ON, 0);

 mt2701_afe_disable_audsys(afe);

 return 0;
}
