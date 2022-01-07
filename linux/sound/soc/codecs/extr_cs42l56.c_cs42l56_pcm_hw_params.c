
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs42l56_private {int mclk; } ;


 int CS42L56_CLKCTL_2 ;
 int CS42L56_CLK_RATIO_MASK ;
 int EINVAL ;
 int cs42l56_get_mclk_ratio (int ,int ) ;
 int dev_err (int ,char*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct cs42l56_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int cs42l56_pcm_hw_params(struct snd_pcm_substream *substream,
         struct snd_pcm_hw_params *params,
         struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs42l56_private *cs42l56 = snd_soc_component_get_drvdata(component);
 int ratio;

 ratio = cs42l56_get_mclk_ratio(cs42l56->mclk, params_rate(params));
 if (ratio >= 0) {
  snd_soc_component_update_bits(component, CS42L56_CLKCTL_2,
        CS42L56_CLK_RATIO_MASK, ratio);
 } else {
  dev_err(component->dev, "unsupported mclk/sclk/lrclk ratio\n");
  return -EINVAL;
 }

 return 0;
}
