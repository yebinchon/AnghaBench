
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;


 int SND_SOC_CLOCK_IN ;
 int WM8978_PLL ;
 int dev_dbg (int ,char*) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;
 scalar_t__ use_count ;

__attribute__((used)) static int migor_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;

 if (use_count) {
  use_count--;

  if (!use_count)
   snd_soc_dai_set_sysclk(codec_dai, WM8978_PLL, 0,
            SND_SOC_CLOCK_IN);
 } else {
  dev_dbg(codec_dai->dev, "Unbalanced hw_free!\n");
 }

 return 0;
}
