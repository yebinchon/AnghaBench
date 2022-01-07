
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int regmap; } ;


 int AFE_ADDA2_TOP_CON0 ;
 int AFE_ADDA_TOP_CON0 ;
 int AFE_I2S_CON1 ;
 int AFE_I2S_CON1_EN ;
 unsigned int AFE_I2S_CON1_FORMAT_I2S ;
 unsigned int AFE_I2S_CON1_LOW_JITTER_CLK ;
 unsigned int AFE_I2S_CON1_RATE (int) ;
 int AFE_I2S_CON2 ;
 int AFE_I2S_CON2_EN ;
 unsigned int AFE_I2S_CON2_FORMAT_I2S ;
 unsigned int AFE_I2S_CON2_LOW_JITTER_CLK ;
 unsigned int AFE_I2S_CON2_RATE (int) ;
 int EINVAL ;
 int mt8173_afe_i2s_fs (unsigned int) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;

__attribute__((used)) static int mt8173_afe_set_i2s(struct mtk_base_afe *afe, unsigned int rate)
{
 unsigned int val;
 int fs = mt8173_afe_i2s_fs(rate);

 if (fs < 0)
  return -EINVAL;


 regmap_update_bits(afe->regmap, AFE_ADDA_TOP_CON0, 0x1, 0x1);
 regmap_update_bits(afe->regmap, AFE_ADDA2_TOP_CON0, 0x1, 0x1);


 val = AFE_I2S_CON2_LOW_JITTER_CLK |
       AFE_I2S_CON2_RATE(fs) |
       AFE_I2S_CON2_FORMAT_I2S;

 regmap_update_bits(afe->regmap, AFE_I2S_CON2, ~AFE_I2S_CON2_EN, val);


 val = AFE_I2S_CON1_LOW_JITTER_CLK |
       AFE_I2S_CON1_RATE(fs) |
       AFE_I2S_CON1_FORMAT_I2S;

 regmap_update_bits(afe->regmap, AFE_I2S_CON1, ~AFE_I2S_CON1_EN, val);
 return 0;
}
