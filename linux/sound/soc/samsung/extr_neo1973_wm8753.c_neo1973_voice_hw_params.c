
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int SND_SOC_CLOCK_IN ;
 int WM8753_PCMCLK ;
 int WM8753_PCMDIV ;
 unsigned int WM8753_PCM_DIV_6 ;
 int WM8753_PLL2 ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 unsigned long s3c24xx_i2s_get_clockrate () ;
 int snd_soc_dai_set_clkdiv (struct snd_soc_dai*,int ,unsigned int) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,unsigned long,int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int neo1973_voice_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 unsigned int pcmdiv = 0;
 int ret = 0;
 unsigned long iis_clkrate;

 iis_clkrate = s3c24xx_i2s_get_clockrate();

 if (params_rate(params) != 8000)
  return -EINVAL;
 if (params_channels(params) != 1)
  return -EINVAL;

 pcmdiv = WM8753_PCM_DIV_6;


 ret = snd_soc_dai_set_sysclk(codec_dai, WM8753_PCMCLK, 12288000,
  SND_SOC_CLOCK_IN);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_clkdiv(codec_dai, WM8753_PCMDIV, pcmdiv);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_pll(codec_dai, WM8753_PLL2, 0,
  iis_clkrate / 4, 12288000);
 if (ret < 0)
  return ret;

 return 0;
}
