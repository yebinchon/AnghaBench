
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 unsigned int S3C2410_IISMOD_32FS ;
 int S3C24XX_DIV_MCLK ;
 int S3C24XX_DIV_PRESCALER ;
 unsigned int S3C24XX_PRESCALE (int,int) ;
 int SND_SOC_CLOCK_IN ;
 int WM8753_BCLKDIV ;
 unsigned int WM8753_BCLK_DIV_16 ;
 unsigned int WM8753_BCLK_DIV_2 ;
 unsigned int WM8753_BCLK_DIV_4 ;
 unsigned int WM8753_BCLK_DIV_8 ;
 int WM8753_MCLK ;
 int WM8753_PLL1 ;
 int params_rate (struct snd_pcm_hw_params*) ;
 unsigned long s3c24xx_i2s_get_clockrate () ;
 int snd_soc_dai_set_clkdiv (struct snd_soc_dai*,int ,unsigned int) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,unsigned long,unsigned int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;

__attribute__((used)) static int neo1973_hifi_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 unsigned int pll_out = 0, bclk = 0;
 int ret = 0;
 unsigned long iis_clkrate;

 iis_clkrate = s3c24xx_i2s_get_clockrate();

 switch (params_rate(params)) {
 case 8000:
 case 16000:
  pll_out = 12288000;
  break;
 case 48000:
  bclk = WM8753_BCLK_DIV_4;
  pll_out = 12288000;
  break;
 case 96000:
  bclk = WM8753_BCLK_DIV_2;
  pll_out = 12288000;
  break;
 case 11025:
  bclk = WM8753_BCLK_DIV_16;
  pll_out = 11289600;
  break;
 case 22050:
  bclk = WM8753_BCLK_DIV_8;
  pll_out = 11289600;
  break;
 case 44100:
  bclk = WM8753_BCLK_DIV_4;
  pll_out = 11289600;
  break;
 case 88200:
  bclk = WM8753_BCLK_DIV_2;
  pll_out = 11289600;
  break;
 }


 ret = snd_soc_dai_set_sysclk(codec_dai, WM8753_MCLK, pll_out,
  SND_SOC_CLOCK_IN);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_clkdiv(cpu_dai, S3C24XX_DIV_MCLK,
  S3C2410_IISMOD_32FS);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_clkdiv(codec_dai, WM8753_BCLKDIV, bclk);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_clkdiv(cpu_dai, S3C24XX_DIV_PRESCALER,
  S3C24XX_PRESCALE(4, 4));
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_pll(codec_dai, WM8753_PLL1, 0,
  iis_clkrate / 4, pll_out);
 if (ret < 0)
  return ret;

 return 0;
}
