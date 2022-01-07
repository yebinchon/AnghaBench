
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_pdm {int dclk; int map; } ;


 int EINVAL ;
 int PDM_CTRL ;
 unsigned int PDM_CTRL_OUT_MODE ;
 unsigned int axg_pdm_get_os (struct axg_pdm*) ;
 int axg_pdm_set_channel_mask (struct axg_pdm*,int ) ;
 int axg_pdm_set_sample_pointer (struct axg_pdm*) ;
 int axg_pdm_set_sysclk (struct axg_pdm*,unsigned int,unsigned int) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_err (int ,char*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct axg_pdm* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_pdm_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *dai)
{
 struct axg_pdm *priv = snd_soc_dai_get_drvdata(dai);
 unsigned int os = axg_pdm_get_os(priv);
 unsigned int rate = params_rate(params);
 unsigned int val;
 int ret;

 switch (params_width(params)) {
 case 24:
  val = PDM_CTRL_OUT_MODE;
  break;
 case 32:
  val = 0;
  break;
 default:
  dev_err(dai->dev, "unsupported sample width\n");
  return -EINVAL;
 }

 regmap_update_bits(priv->map, PDM_CTRL, PDM_CTRL_OUT_MODE, val);

 ret = axg_pdm_set_sysclk(priv, os, rate);
 if (ret) {
  dev_err(dai->dev, "failed to set system clock\n");
  return ret;
 }

 ret = clk_set_rate(priv->dclk, rate * os);
 if (ret) {
  dev_err(dai->dev, "failed to set dclk\n");
  return ret;
 }

 ret = axg_pdm_set_sample_pointer(priv);
 if (ret) {
  dev_err(dai->dev, "invalid clock setting\n");
  return ret;
 }

 axg_pdm_set_channel_mask(priv, params_channels(params));

 return 0;
}
