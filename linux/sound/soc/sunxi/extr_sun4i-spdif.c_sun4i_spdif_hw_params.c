
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun4i_spdif_dev {int regmap; int spdif_clk; struct platform_device* pdev; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct platform_device {int dev; } ;


 int EINVAL ;



 int SUN4I_SPDIF_FCTL ;
 int SUN4I_SPDIF_FCTL_TXIM ;
 int SUN4I_SPDIF_TXCFG ;
 int SUN4I_SPDIF_TXCFG_ASS ;
 int SUN4I_SPDIF_TXCFG_CHSTMODE ;
 int SUN4I_SPDIF_TXCFG_FMT16BIT ;
 int SUN4I_SPDIF_TXCFG_FMT20BIT ;
 int SUN4I_SPDIF_TXCFG_FMT24BIT ;
 int SUN4I_SPDIF_TXCFG_NONAUDIO ;
 int SUN4I_SPDIF_TXCFG_TXRATIO (int) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_err (int *,char*,unsigned int) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 unsigned long params_rate (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;
 struct sun4i_spdif_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int sun4i_spdif_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *cpu_dai)
{
 int ret = 0;
 int fmt;
 unsigned long rate = params_rate(params);
 u32 mclk_div = 0;
 unsigned int mclk = 0;
 u32 reg_val;
 struct sun4i_spdif_dev *host = snd_soc_dai_get_drvdata(cpu_dai);
 struct platform_device *pdev = host->pdev;


 switch (params_channels(params)) {
 case 1:
 case 2:
  fmt = 0;
  break;
 case 4:
  fmt = SUN4I_SPDIF_TXCFG_NONAUDIO;
  break;
 default:
  return -EINVAL;
 }

 switch (params_format(params)) {
 case 130:
  fmt |= SUN4I_SPDIF_TXCFG_FMT16BIT;
  break;
 case 129:
  fmt |= SUN4I_SPDIF_TXCFG_FMT20BIT;
  break;
 case 128:
  fmt |= SUN4I_SPDIF_TXCFG_FMT24BIT;
  break;
 default:
  return -EINVAL;
 }

 switch (rate) {
 case 22050:
 case 44100:
 case 88200:
 case 176400:
  mclk = 22579200;
  break;
 case 24000:
 case 32000:
 case 48000:
 case 96000:
 case 192000:
  mclk = 24576000;
  break;
 default:
  return -EINVAL;
 }

 ret = clk_set_rate(host->spdif_clk, mclk);
 if (ret < 0) {
  dev_err(&pdev->dev,
   "Setting SPDIF clock rate for %d Hz failed!\n", mclk);
  return ret;
 }

 regmap_update_bits(host->regmap, SUN4I_SPDIF_FCTL,
      SUN4I_SPDIF_FCTL_TXIM, SUN4I_SPDIF_FCTL_TXIM);

 switch (rate) {
 case 22050:
 case 24000:
  mclk_div = 8;
  break;
 case 32000:
  mclk_div = 6;
  break;
 case 44100:
 case 48000:
  mclk_div = 4;
  break;
 case 88200:
 case 96000:
  mclk_div = 2;
  break;
 case 176400:
 case 192000:
  mclk_div = 1;
  break;
 default:
  return -EINVAL;
 }

 reg_val = 0;
 reg_val |= SUN4I_SPDIF_TXCFG_ASS;
 reg_val |= fmt;
 reg_val |= SUN4I_SPDIF_TXCFG_CHSTMODE;
 reg_val |= SUN4I_SPDIF_TXCFG_TXRATIO(mclk_div - 1);
 regmap_write(host->regmap, SUN4I_SPDIF_TXCFG, reg_val);

 return 0;
}
