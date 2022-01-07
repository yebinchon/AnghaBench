
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct s3c_i2sv2_rate_calc {scalar_t__ clk_div; scalar_t__ fs_div; } ;


 int S3C2412_DIV_PRESCALER ;
 int S3C2412_DIV_RCLK ;
 int SND_SOC_CLOCK_IN ;
 int WM8750_SYSCLK ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int s3c_i2sv2_get_clock (struct snd_soc_dai*) ;
 int s3c_i2sv2_iis_calc_rate (struct s3c_i2sv2_rate_calc*,int *,int,int ) ;
 int snd_soc_dai_set_clkdiv (struct snd_soc_dai*,int ,scalar_t__) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;

__attribute__((used)) static int jive_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct s3c_i2sv2_rate_calc div;
 unsigned int clk = 0;
 int ret = 0;

 switch (params_rate(params)) {
 case 8000:
 case 16000:
 case 48000:
 case 96000:
  clk = 12288000;
  break;
 case 11025:
 case 22050:
 case 44100:
  clk = 11289600;
  break;
 }

 s3c_i2sv2_iis_calc_rate(&div, ((void*)0), params_rate(params),
    s3c_i2sv2_get_clock(cpu_dai));


 ret = snd_soc_dai_set_sysclk(codec_dai, WM8750_SYSCLK, clk,
         SND_SOC_CLOCK_IN);
 if (ret < 0)
  return ret;

 ret = snd_soc_dai_set_clkdiv(cpu_dai, S3C2412_DIV_RCLK, div.fs_div);
 if (ret < 0)
  return ret;

 ret = snd_soc_dai_set_clkdiv(cpu_dai, S3C2412_DIV_PRESCALER,
         div.clk_div - 1);
 if (ret < 0)
  return ret;

 return 0;
}
