
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int num_codecs; struct snd_soc_dai* codec_dai; struct snd_soc_dai** codec_dais; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card {TYPE_1__* dai_link; } ;
struct TYPE_2__ {int name; } ;


 int FIN_PLL_RATE ;
 int SND_SOC_CLOCK_IN ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;
 struct snd_soc_pcm_runtime* snd_soc_get_pcm_runtime (struct snd_soc_card*,int ) ;

__attribute__((used)) static int snow_late_probe(struct snd_soc_card *card)
{
 struct snd_soc_pcm_runtime *rtd;
 struct snd_soc_dai *codec_dai;

 rtd = snd_soc_get_pcm_runtime(card, card->dai_link[0].name);


 if (rtd->num_codecs > 1)
  codec_dai = rtd->codec_dais[0];
 else
  codec_dai = rtd->codec_dai;


 return snd_soc_dai_set_sysclk(codec_dai, 0,
    FIN_PLL_RATE, SND_SOC_CLOCK_IN);
}
