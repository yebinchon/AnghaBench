
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int regmap; } ;


 int AFE_I2S_CON1 ;
 int AFE_I2S_CON2 ;
 unsigned int AFE_I2S_CON2_EN ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void mt8173_afe_set_i2s_enable(struct mtk_base_afe *afe, bool enable)
{
 unsigned int val;

 regmap_read(afe->regmap, AFE_I2S_CON2, &val);
 if (!!(val & AFE_I2S_CON2_EN) == enable)
  return;


 regmap_update_bits(afe->regmap, AFE_I2S_CON2, 0x1, enable);


 regmap_update_bits(afe->regmap, AFE_I2S_CON1, 0x1, enable);
}
