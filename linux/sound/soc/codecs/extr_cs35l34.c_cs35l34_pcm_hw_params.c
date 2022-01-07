
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct cs35l34_private {int regmap; int mclk_int; } ;
struct TYPE_2__ {int adsp_rate; } ;


 int CS35L34_ADSP_CLK_CTL ;
 int CS35L34_ADSP_RATE ;
 int cs35l34_get_mclk_coeff (int ,int) ;
 TYPE_1__* cs35l34_mclk_coeffs ;
 int dev_err (int ,char*,int,...) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct cs35l34_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs35l34_pcm_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs35l34_private *priv = snd_soc_component_get_drvdata(component);
 int srate = params_rate(params);
 int ret;

 int coeff = cs35l34_get_mclk_coeff(priv->mclk_int, srate);

 if (coeff < 0) {
  dev_err(component->dev, "ERROR: Invalid mclk %d and/or srate %d\n",
   priv->mclk_int, srate);
  return coeff;
 }

 ret = regmap_update_bits(priv->regmap, CS35L34_ADSP_CLK_CTL,
  CS35L34_ADSP_RATE, cs35l34_mclk_coeffs[coeff].adsp_rate);
 if (ret != 0)
  dev_err(component->dev, "Failed to set clock state %d\n", ret);

 return ret;
}
