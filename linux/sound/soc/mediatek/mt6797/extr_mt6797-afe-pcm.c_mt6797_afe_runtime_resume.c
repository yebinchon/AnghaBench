
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int regmap; } ;
struct device {int dummy; } ;


 int AFE_CONN_24BIT ;
 int AFE_DAC_CON0 ;
 int AFE_IRQ_MCU_EN ;
 int AFE_IRQ_MCU_EN_MASK_SFT ;
 int AFE_MEMIF_HDALIGN ;
 int AFE_MEMIF_MSB ;
 int AFE_ON_MASK_SFT ;
 int AFE_ON_SFT ;
 int CPU_COMPACT_MODE_MASK_SFT ;
 int CPU_HD_ALIGN_MASK_SFT ;
 struct mtk_base_afe* dev_get_drvdata (struct device*) ;
 int mt6797_afe_enable_clock (struct mtk_base_afe*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int mt6797_afe_runtime_resume(struct device *dev)
{
 struct mtk_base_afe *afe = dev_get_drvdata(dev);
 int ret;

 ret = mt6797_afe_enable_clock(afe);
 if (ret)
  return ret;


 regmap_write(afe->regmap, AFE_IRQ_MCU_EN, AFE_IRQ_MCU_EN_MASK_SFT);


 regmap_update_bits(afe->regmap, AFE_MEMIF_HDALIGN,
      0x7ff << 16, 0x7ff << 16);

 regmap_update_bits(afe->regmap, AFE_MEMIF_MSB,
      CPU_COMPACT_MODE_MASK_SFT, 0);

 regmap_update_bits(afe->regmap, AFE_MEMIF_MSB,
      CPU_HD_ALIGN_MASK_SFT, 0);


 regmap_update_bits(afe->regmap, AFE_CONN_24BIT,
      0x3fffffff, 0x3fffffff);


 regmap_update_bits(afe->regmap, AFE_DAC_CON0,
      AFE_ON_MASK_SFT,
      0x1 << AFE_ON_SFT);

 return 0;
}
