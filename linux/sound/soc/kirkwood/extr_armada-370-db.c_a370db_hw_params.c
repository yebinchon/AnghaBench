
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int SND_SOC_CLOCK_IN ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;

__attribute__((used)) static int a370db_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 unsigned int freq;

 switch (params_rate(params)) {
 default:
 case 44100:
  freq = 11289600;
  break;
 case 48000:
  freq = 12288000;
  break;
 case 96000:
  freq = 24576000;
  break;
 }

 return snd_soc_dai_set_sysclk(codec_dai, 0, freq, SND_SOC_CLOCK_IN);
}
