
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* codec_dai; } ;
struct snd_soc_dapm_context {scalar_t__ dev; } ;
struct TYPE_6__ {int bias_level; } ;
struct snd_soc_card {TYPE_3__ dapm; TYPE_1__* dai_link; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_5__ {scalar_t__ dev; } ;
struct TYPE_4__ {int name; } ;




 struct snd_soc_pcm_runtime* snd_soc_get_pcm_runtime (struct snd_soc_card*,int ) ;
 int tm2_start_sysclk (struct snd_soc_card*) ;
 int tm2_stop_sysclk (struct snd_soc_card*) ;

__attribute__((used)) static int tm2_set_bias_level(struct snd_soc_card *card,
    struct snd_soc_dapm_context *dapm,
    enum snd_soc_bias_level level)
{
 struct snd_soc_pcm_runtime *rtd;

 rtd = snd_soc_get_pcm_runtime(card, card->dai_link[0].name);

 if (dapm->dev != rtd->codec_dai->dev)
  return 0;

 switch (level) {
 case 128:
  if (card->dapm.bias_level == 129)
   tm2_start_sysclk(card);
  break;
 case 129:
  tm2_stop_sysclk(card);
  break;
 default:
  break;
 }

 return 0;
}
