
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int SMDK_WM8580_FREQ ;
 int SND_SOC_CLOCK_IN ;
 int WM8580_CLKSRC_PLLA ;
 int WM8580_MCLK ;
 int WM8580_PLLA ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int params_width (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_clkdiv (struct snd_soc_dai*,int ,int ) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int ,unsigned int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;

__attribute__((used)) static int smdk_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 unsigned int pll_out;
 int rfs, ret;

 switch (params_width(params)) {
 case 8:
 case 16:
  break;
 default:
  return -EINVAL;
 }
 switch (params_rate(params)) {
 case 16000:
 case 22050:
 case 32000:
 case 44100:
 case 48000:
 case 88200:
 case 96000:
  rfs = 256;
  break;
 case 64000:
  rfs = 384;
  break;
 case 8000:
 case 11025:
  rfs = 512;
  break;
 default:
  return -EINVAL;
 }
 pll_out = params_rate(params) * rfs;


 ret = snd_soc_dai_set_clkdiv(codec_dai, WM8580_MCLK,
     WM8580_CLKSRC_PLLA);
 if (ret < 0)
  return ret;

 ret = snd_soc_dai_set_pll(codec_dai, WM8580_PLLA, 0,
     SMDK_WM8580_FREQ, pll_out);
 if (ret < 0)
  return ret;

 ret = snd_soc_dai_set_sysclk(codec_dai, WM8580_CLKSRC_PLLA,
         pll_out, SND_SOC_CLOCK_IN);
 if (ret < 0)
  return ret;

 return 0;
}
