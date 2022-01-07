
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct classh_cfg {int classh_wk_fet_disable; } ;
struct TYPE_2__ {scalar_t__ stereo; struct classh_cfg classh_algo; } ;
struct cs35l35_private {int sclk; int regmap; scalar_t__ slave_mode; scalar_t__ i2s_mode; TYPE_1__ pdata; int sysclk; } ;


 int CS35L35_ADVIN_DEPTH_MASK ;
 int CS35L35_ADVIN_DEPTH_SHIFT ;
 int CS35L35_AUDIN_DEPTH_CTL ;
 int CS35L35_AUDIN_DEPTH_MASK ;
 int CS35L35_AUDIN_DEPTH_SHIFT ;
 int CS35L35_CH_WKFET_DEL_MASK ;
 int CS35L35_CH_WKFET_DEL_SHIFT ;
 int CS35L35_CLASS_H_FET_DRIVE_CTL ;
 int CS35L35_CLK_CTL2 ;
 int CS35L35_CLK_CTL2_MASK ;
 int CS35L35_CLK_CTL3 ;
 int CS35L35_SDIN_DEPTH_16 ;
 int CS35L35_SDIN_DEPTH_24 ;
 int CS35L35_SDIN_DEPTH_8 ;
 int CS35L35_SP_RATE_MASK ;



 int CS35L35_SP_SCLKS_MASK ;
 int CS35L35_SP_SCLKS_SHIFT ;
 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int cs35l35_get_clk_config (int ,int) ;
 int dev_err (int ,char*,...) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct cs35l35_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs35l35_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct cs35l35_private *cs35l35 = snd_soc_component_get_drvdata(component);
 struct classh_cfg *classh = &cs35l35->pdata.classh_algo;
 int srate = params_rate(params);
 int ret = 0;
 u8 sp_sclks;
 int audin_format;
 int errata_chk;

 int clk_ctl = cs35l35_get_clk_config(cs35l35->sysclk, srate);

 if (clk_ctl < 0) {
  dev_err(component->dev, "Invalid CLK:Rate %d:%d\n",
   cs35l35->sysclk, srate);
  return -EINVAL;
 }

 ret = regmap_update_bits(cs35l35->regmap, CS35L35_CLK_CTL2,
     CS35L35_CLK_CTL2_MASK, clk_ctl);
 if (ret != 0) {
  dev_err(component->dev, "Failed to set port config %d\n", ret);
  return ret;
 }







 errata_chk = clk_ctl & CS35L35_SP_RATE_MASK;

 if (classh->classh_wk_fet_disable == 0x00 &&
  (errata_chk == 0x01 || errata_chk == 0x03)) {
  ret = regmap_update_bits(cs35l35->regmap,
     CS35L35_CLASS_H_FET_DRIVE_CTL,
     CS35L35_CH_WKFET_DEL_MASK,
     0 << CS35L35_CH_WKFET_DEL_SHIFT);
  if (ret != 0) {
   dev_err(component->dev, "Failed to set fet config %d\n",
    ret);
   return ret;
  }
 }





 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  switch (params_width(params)) {
  case 8:
   audin_format = CS35L35_SDIN_DEPTH_8;
   break;
  case 16:
   audin_format = CS35L35_SDIN_DEPTH_16;
   break;
  case 24:
   audin_format = CS35L35_SDIN_DEPTH_24;
   break;
  default:
   dev_err(component->dev, "Unsupported Width %d\n",
    params_width(params));
   return -EINVAL;
  }
  regmap_update_bits(cs35l35->regmap,
    CS35L35_AUDIN_DEPTH_CTL,
    CS35L35_AUDIN_DEPTH_MASK,
    audin_format <<
    CS35L35_AUDIN_DEPTH_SHIFT);
  if (cs35l35->pdata.stereo) {
   regmap_update_bits(cs35l35->regmap,
     CS35L35_AUDIN_DEPTH_CTL,
     CS35L35_ADVIN_DEPTH_MASK,
     audin_format <<
     CS35L35_ADVIN_DEPTH_SHIFT);
  }
 }

 if (cs35l35->i2s_mode) {



  if ((cs35l35->sclk / srate) % 4) {
   dev_err(component->dev, "Unsupported sclk/fs ratio %d:%d\n",
     cs35l35->sclk, srate);
   return -EINVAL;
  }
  sp_sclks = ((cs35l35->sclk / srate) / 4) - 1;


  if (cs35l35->slave_mode) {
   switch (sp_sclks) {
   case 130:
   case 129:
   case 128:
    break;
   default:
    dev_err(component->dev, "ratio not supported\n");
    return -EINVAL;
   }
  } else {

   switch (sp_sclks) {
   case 130:
   case 128:
    break;
   default:
    dev_err(component->dev, "ratio not supported\n");
    return -EINVAL;
   }
  }
  ret = regmap_update_bits(cs35l35->regmap,
     CS35L35_CLK_CTL3,
     CS35L35_SP_SCLKS_MASK, sp_sclks <<
     CS35L35_SP_SCLKS_SHIFT);
  if (ret != 0) {
   dev_err(component->dev, "Failed to set fsclk %d\n", ret);
   return ret;
  }
 }

 return ret;
}
