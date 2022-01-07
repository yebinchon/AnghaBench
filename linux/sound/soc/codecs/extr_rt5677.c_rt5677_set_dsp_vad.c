
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt5677_priv {int type; int regmap; int fw2; int fw1; } ;


 int CONFIG_SND_SOC_RT5677_SPI ;
 int ENXIO ;
 int IS_ENABLED (int ) ;


 scalar_t__ RT5677_BIAS_CUR4 ;
 scalar_t__ RT5677_DIG_MISC ;
 int RT5677_DSP_CLK_SRC_BYPASS ;
 int RT5677_DSP_CLK_SRC_MASK ;
 int RT5677_FIRMWARE1 ;
 int RT5677_FIRMWARE2 ;
 scalar_t__ RT5677_GLB_CLK1 ;
 scalar_t__ RT5677_GLB_CLK2 ;
 int RT5677_LDO1_SEL_MASK ;
 int RT5677_MCLK2_SRC ;
 int RT5677_MCLK_SRC_MASK ;
 int RT5677_PLL2_PR_SRC_MASK ;
 int RT5677_PLL2_PR_SRC_MCLK2 ;
 scalar_t__ RT5677_PR_BASE ;
 scalar_t__ RT5677_PWR_ANLG1 ;
 scalar_t__ RT5677_PWR_ANLG2 ;
 scalar_t__ RT5677_PWR_DSP1 ;
 scalar_t__ RT5677_PWR_DSP2 ;
 int RT5677_PWR_LDO1 ;
 scalar_t__ RT5677_RESET ;
 int regcache_cache_bypass (int ,int) ;
 int regcache_cache_only (int ,int) ;
 int regcache_mark_dirty (int ) ;
 int regcache_sync (int ) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;
 int regmap_write (int ,scalar_t__,int) ;
 int release_firmware (int ) ;
 int request_firmware (int *,int ,int ) ;
 int rt5677_set_dsp_mode (struct snd_soc_component*,int) ;
 int rt5677_spi_write_firmware (int,int ) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5677_set_dsp_vad(struct snd_soc_component *component, bool on)
{
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);
 static bool activity;
 int ret;

 if (!IS_ENABLED(CONFIG_SND_SOC_RT5677_SPI))
  return -ENXIO;

 if (on && !activity) {
  activity = 1;

  regcache_cache_only(rt5677->regmap, 0);
  regcache_cache_bypass(rt5677->regmap, 1);

  regmap_update_bits(rt5677->regmap, RT5677_DIG_MISC, 0x1, 0x1);
  regmap_update_bits(rt5677->regmap,
   RT5677_PR_BASE + RT5677_BIAS_CUR4, 0x0f00, 0x0f00);
  regmap_update_bits(rt5677->regmap, RT5677_PWR_ANLG1,
   RT5677_LDO1_SEL_MASK, 0x0);
  regmap_update_bits(rt5677->regmap, RT5677_PWR_ANLG2,
   RT5677_PWR_LDO1, RT5677_PWR_LDO1);
  switch (rt5677->type) {
  case 128:
   regmap_update_bits(rt5677->regmap, RT5677_GLB_CLK1,
    RT5677_MCLK_SRC_MASK, RT5677_MCLK2_SRC);
   regmap_update_bits(rt5677->regmap, RT5677_GLB_CLK2,
    RT5677_PLL2_PR_SRC_MASK |
    RT5677_DSP_CLK_SRC_MASK,
    RT5677_PLL2_PR_SRC_MCLK2 |
    RT5677_DSP_CLK_SRC_BYPASS);
   break;
  case 129:
   regmap_update_bits(rt5677->regmap, RT5677_GLB_CLK2,
    RT5677_DSP_CLK_SRC_MASK,
    RT5677_DSP_CLK_SRC_BYPASS);
   break;
  default:
   break;
  }
  regmap_write(rt5677->regmap, RT5677_PWR_DSP2, 0x07ff);
  regmap_write(rt5677->regmap, RT5677_PWR_DSP1, 0x07fd);
  rt5677_set_dsp_mode(component, 1);

  ret = request_firmware(&rt5677->fw1, RT5677_FIRMWARE1,
   component->dev);
  if (ret == 0) {
   rt5677_spi_write_firmware(0x50000000, rt5677->fw1);
   release_firmware(rt5677->fw1);
  }

  ret = request_firmware(&rt5677->fw2, RT5677_FIRMWARE2,
   component->dev);
  if (ret == 0) {
   rt5677_spi_write_firmware(0x60000000, rt5677->fw2);
   release_firmware(rt5677->fw2);
  }

  regmap_update_bits(rt5677->regmap, RT5677_PWR_DSP1, 0x1, 0x0);

  regcache_cache_bypass(rt5677->regmap, 0);
  regcache_cache_only(rt5677->regmap, 1);
 } else if (!on && activity) {
  activity = 0;

  regcache_cache_only(rt5677->regmap, 0);
  regcache_cache_bypass(rt5677->regmap, 1);

  regmap_update_bits(rt5677->regmap, RT5677_PWR_DSP1, 0x1, 0x1);
  rt5677_set_dsp_mode(component, 0);
  regmap_write(rt5677->regmap, RT5677_PWR_DSP1, 0x0001);

  regmap_write(rt5677->regmap, RT5677_RESET, 0x10ec);

  regcache_cache_bypass(rt5677->regmap, 0);
  regcache_mark_dirty(rt5677->regmap);
  regcache_sync(rt5677->regmap);
 }

 return 0;
}
