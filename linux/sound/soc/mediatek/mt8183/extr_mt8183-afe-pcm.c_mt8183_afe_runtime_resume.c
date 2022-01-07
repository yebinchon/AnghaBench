
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int regmap; struct mt8183_afe_private* platform_priv; } ;
struct mt8183_afe_private {scalar_t__ pm_runtime_bypass_reg_ctl; } ;
struct device {int dummy; } ;


 int AFE_CONN_24BIT ;
 int AFE_CONN_24BIT_1 ;
 int AFE_DAC_CON0 ;
 int AFE_MEMIF_MSB ;
 int AUDIO_TOP_CON0 ;
 int CPU_HD_ALIGN_MASK_SFT ;
 int CPU_HD_ALIGN_SFT ;
 struct mtk_base_afe* dev_get_drvdata (struct device*) ;
 int mt8183_afe_enable_clock (struct mtk_base_afe*) ;
 int regcache_cache_only (int ,int) ;
 int regcache_sync (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int mt8183_afe_runtime_resume(struct device *dev)
{
 struct mtk_base_afe *afe = dev_get_drvdata(dev);
 struct mt8183_afe_private *afe_priv = afe->platform_priv;
 int ret;

 ret = mt8183_afe_enable_clock(afe);
 if (ret)
  return ret;

 if (!afe->regmap || afe_priv->pm_runtime_bypass_reg_ctl)
  goto skip_regmap;

 regcache_cache_only(afe->regmap, 0);
 regcache_sync(afe->regmap);


 regmap_update_bits(afe->regmap, AUDIO_TOP_CON0, 0x1 << 29, 0x1 << 29);


 regmap_update_bits(afe->regmap, AFE_MEMIF_MSB,
      CPU_HD_ALIGN_MASK_SFT, 0 << CPU_HD_ALIGN_SFT);


 regmap_write(afe->regmap, AFE_CONN_24BIT, 0xffffffff);
 regmap_write(afe->regmap, AFE_CONN_24BIT_1, 0xffffffff);


 regmap_update_bits(afe->regmap, AFE_DAC_CON0, 0x1, 0x1);

skip_regmap:
 return 0;
}
