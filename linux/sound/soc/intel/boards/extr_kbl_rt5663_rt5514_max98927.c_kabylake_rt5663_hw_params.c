
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dev; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int RT5663_AD_STEREO_FILTER ;
 int RT5663_CLK_SEL_I2S1_ASRC ;
 int RT5663_DA_STEREO_FILTER ;
 int RT5663_SCLK_S_MCLK ;
 int SND_SOC_CLOCK_IN ;
 int dev_err (int ,char*,int) ;
 int rt5663_sel_asrc_clk_src (int ,int,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int kabylake_rt5663_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int ret;


 rt5663_sel_asrc_clk_src(codec_dai->component,
   RT5663_DA_STEREO_FILTER | RT5663_AD_STEREO_FILTER,
   RT5663_CLK_SEL_I2S1_ASRC);

 ret = snd_soc_dai_set_sysclk(codec_dai,
   RT5663_SCLK_S_MCLK, 24576000, SND_SOC_CLOCK_IN);
 if (ret < 0)
  dev_err(rtd->dev, "snd_soc_dai_set_sysclk err = %d\n", ret);

 return ret;
}
