
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dapm_context {scalar_t__ dev; int bias_level; } ;
struct snd_soc_dai {scalar_t__ dev; } ;
struct snd_soc_card {TYPE_1__* dai_link; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {int name; } ;



 int SND_SOC_BIAS_STANDBY ;
 int SND_SOC_CLOCK_IN ;
 int WM8994_FLL1 ;
 int WM8994_FLL_SRC_MCLK2 ;
 int WM8994_SYSCLK_FLL1 ;
 int pr_err (char*,int) ;
 int sample_rate ;
 int snd_soc_dai_set_pll (struct snd_soc_dai*,int ,int ,int,int) ;
 int snd_soc_dai_set_sysclk (struct snd_soc_dai*,int ,int,int ) ;
 struct snd_soc_pcm_runtime* snd_soc_get_pcm_runtime (struct snd_soc_card*,int ) ;

__attribute__((used)) static int littlemill_set_bias_level(struct snd_soc_card *card,
       struct snd_soc_dapm_context *dapm,
       enum snd_soc_bias_level level)
{
 struct snd_soc_pcm_runtime *rtd;
 struct snd_soc_dai *aif1_dai;
 int ret;

 rtd = snd_soc_get_pcm_runtime(card, card->dai_link[0].name);
 aif1_dai = rtd->codec_dai;

 if (dapm->dev != aif1_dai->dev)
  return 0;

 switch (level) {
 case 128:




  if (dapm->bias_level == SND_SOC_BIAS_STANDBY) {
   ret = snd_soc_dai_set_pll(aif1_dai, WM8994_FLL1,
        WM8994_FLL_SRC_MCLK2, 32768,
        sample_rate * 512);
   if (ret < 0) {
    pr_err("Failed to start FLL: %d\n", ret);
    return ret;
   }

   ret = snd_soc_dai_set_sysclk(aif1_dai,
           WM8994_SYSCLK_FLL1,
           sample_rate * 512,
           SND_SOC_CLOCK_IN);
   if (ret < 0) {
    pr_err("Failed to set SYSCLK: %d\n", ret);
    return ret;
   }
  }
  break;

 default:
  break;
 }

 return 0;
}
