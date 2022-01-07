
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct max98373_priv {int ch_size; int regmap; int tdm_mode; } ;


 int EINVAL ;
 int MAX98373_PCM_CLK_SETUP_BSEL_MASK ;
 int MAX98373_R2026_PCM_CLOCK_RATIO ;
 int dev_err (int ,char*,int ) ;
 int max98373_get_bclk_sel (int) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct max98373_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max98373_set_clock(struct snd_soc_component *component,
 struct snd_pcm_hw_params *params)
{
 struct max98373_priv *max98373 = snd_soc_component_get_drvdata(component);

 int blr_clk_ratio = params_channels(params) * max98373->ch_size;
 int value;

 if (!max98373->tdm_mode) {

  value = max98373_get_bclk_sel(blr_clk_ratio);
  if (!value) {
   dev_err(component->dev, "format unsupported %d\n",
    params_format(params));
   return -EINVAL;
  }

  regmap_update_bits(max98373->regmap,
   MAX98373_R2026_PCM_CLOCK_RATIO,
   MAX98373_PCM_CLK_SETUP_BSEL_MASK,
   value);
 }
 return 0;
}
