
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int SND_SOC_CLOCK_IN ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;

__attribute__((used)) static int n810_hw_params(struct snd_pcm_substream *substream,
 struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 int err;


 err = snd_soc_dai_set_sysclk(codec_dai, 0, 12000000,
         SND_SOC_CLOCK_IN);

 return err;
}
