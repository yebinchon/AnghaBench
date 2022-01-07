
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int PXA_SSP_CLK_AUDIO ;
 int SND_SOC_CLOCK_OUT ;
 int SND_SOC_DAIFMT_CBS_CFS ;
 int SND_SOC_DAIFMT_DSP_A ;
 int SND_SOC_DAIFMT_MSB ;
 int SND_SOC_DAIFMT_NB_IF ;
 int SND_SOC_DAIFMT_NB_NF ;
 int params_format (struct snd_pcm_hw_params*) ;
 unsigned int snd_pcm_format_physical_width (int ) ;
 int snd_soc_dai_set_fmt (struct snd_soc_dai*,int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;
 int snd_soc_dai_set_tdm_slot (struct snd_soc_dai*,int,int ,int,unsigned int) ;

__attribute__((used)) static int magician_playback_hw_params(struct snd_pcm_substream *substream,
           struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 unsigned int width;
 int ret = 0;


 ret = snd_soc_dai_set_fmt(codec_dai, SND_SOC_DAIFMT_MSB |
   SND_SOC_DAIFMT_NB_NF | SND_SOC_DAIFMT_CBS_CFS);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_fmt(cpu_dai, SND_SOC_DAIFMT_DSP_A |
   SND_SOC_DAIFMT_NB_IF | SND_SOC_DAIFMT_CBS_CFS);
 if (ret < 0)
  return ret;

 width = snd_pcm_format_physical_width(params_format(params));
 ret = snd_soc_dai_set_tdm_slot(cpu_dai, 1, 0, 1, width);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_sysclk(cpu_dai, PXA_SSP_CLK_AUDIO, 0,
   SND_SOC_CLOCK_OUT);
 if (ret < 0)
  return ret;

 return 0;
}
