
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dapm_context {scalar_t__ dev; } ;
struct snd_soc_dai {scalar_t__ dev; } ;
struct TYPE_3__ {int bias_level; } ;
struct snd_soc_card {TYPE_1__ dapm; TYPE_2__* dai_link; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_4__ {int name; } ;


 int MCLK_AUDIO_RATE ;

 int SND_SOC_BIAS_STANDBY ;
 int SND_SOC_CLOCK_IN ;
 int WM8996_FLL_MCLK2 ;
 int WM8996_SYSCLK_FLL ;
 int pr_err (char*) ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int,int ) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int ,int ) ;
 struct snd_soc_pcm_runtime* snd_soc_get_pcm_runtime (struct snd_soc_card*,int ) ;

__attribute__((used)) static int speyside_set_bias_level_post(struct snd_soc_card *card,
     struct snd_soc_dapm_context *dapm,
     enum snd_soc_bias_level level)
{
 struct snd_soc_pcm_runtime *rtd;
 struct snd_soc_dai *codec_dai;
 int ret;

 rtd = snd_soc_get_pcm_runtime(card, card->dai_link[1].name);
 codec_dai = rtd->codec_dai;

 if (dapm->dev != codec_dai->dev)
  return 0;

 switch (level) {
 case 128:
  if (card->dapm.bias_level == SND_SOC_BIAS_STANDBY) {
   ret = snd_soc_dai_set_pll(codec_dai, 0,
        WM8996_FLL_MCLK2,
        32768, MCLK_AUDIO_RATE);
   if (ret < 0) {
    pr_err("Failed to start FLL\n");
    return ret;
   }

   ret = snd_soc_dai_set_sysclk(codec_dai,
           WM8996_SYSCLK_FLL,
           MCLK_AUDIO_RATE,
           SND_SOC_CLOCK_IN);
   if (ret < 0)
    return ret;
  }
  break;

 default:
  break;
 }

 card->dapm.bias_level = level;

 return 0;
}
