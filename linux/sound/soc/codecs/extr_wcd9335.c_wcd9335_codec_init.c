
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wcd9335_codec {int regmap; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_3__ {int val; int mask; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int WCD9335_CODEC_RPM_CLK_GATE ;
 int WCD9335_CODEC_RPM_CLK_GATE_MCLK_GATE_MASK ;
 int WCD9335_CODEC_RPM_CLK_MCLK_CFG ;
 int WCD9335_CODEC_RPM_CLK_MCLK_CFG_9P6MHZ ;
 int WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK ;
 struct wcd9335_codec* dev_get_drvdata (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 TYPE_1__* wcd9335_codec_reg_init ;
 int wcd9335_enable_efuse_sensing (struct snd_soc_component*) ;

__attribute__((used)) static void wcd9335_codec_init(struct snd_soc_component *component)
{
 struct wcd9335_codec *wcd = dev_get_drvdata(component->dev);
 int i;


 regmap_update_bits(wcd->regmap, WCD9335_CODEC_RPM_CLK_GATE,
    WCD9335_CODEC_RPM_CLK_GATE_MCLK_GATE_MASK, 0);

 regmap_update_bits(wcd->regmap, WCD9335_CODEC_RPM_CLK_MCLK_CFG,
    WCD9335_CODEC_RPM_CLK_MCLK_CFG_MCLK_MASK,
    WCD9335_CODEC_RPM_CLK_MCLK_CFG_9P6MHZ);

 for (i = 0; i < ARRAY_SIZE(wcd9335_codec_reg_init); i++)
  snd_soc_component_update_bits(component,
     wcd9335_codec_reg_init[i].reg,
     wcd9335_codec_reg_init[i].mask,
     wcd9335_codec_reg_init[i].val);

 wcd9335_enable_efuse_sensing(component);
}
