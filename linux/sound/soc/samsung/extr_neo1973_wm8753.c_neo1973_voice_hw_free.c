
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;


 int WM8753_PLL2 ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int ,int ) ;

__attribute__((used)) static int neo1973_voice_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;


 return snd_soc_dai_set_pll(codec_dai, WM8753_PLL2, 0, 0, 0);
}
