
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {struct snd_soc_card* card; struct snd_soc_dai* cpu_dai; struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_soc_card_drvdata_davinci {unsigned int sysclk; } ;
struct snd_soc_card {int dummy; } ;
struct snd_pcm_substream {struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int ENOTSUPP ;
 int SND_SOC_CLOCK_OUT ;
 scalar_t__ snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,unsigned int,int ) ;

__attribute__((used)) static int evm_hw_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_dai *codec_dai = rtd->codec_dai;
 struct snd_soc_dai *cpu_dai = rtd->cpu_dai;
 struct snd_soc_card *soc_card = rtd->card;
 int ret = 0;
 unsigned sysclk = ((struct snd_soc_card_drvdata_davinci *)
      snd_soc_card_get_drvdata(soc_card))->sysclk;


 ret = snd_soc_dai_set_sysclk(codec_dai, 0, sysclk, SND_SOC_CLOCK_OUT);
 if (ret < 0)
  return ret;


 ret = snd_soc_dai_set_sysclk(cpu_dai, 0, sysclk, SND_SOC_CLOCK_OUT);
 if (ret < 0 && ret != -ENOTSUPP)
  return ret;

 return 0;
}
