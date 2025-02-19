
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {struct snd_soc_dai* codec_dai; } ;
struct snd_soc_dapm_context {scalar_t__ dev; int bias_level; } ;
struct snd_soc_dai {scalar_t__ dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_soc_card {TYPE_1__* dai_link; struct bells_drvdata* drvdata; } ;
struct bells_drvdata {int asyncclk_rate; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;
struct TYPE_2__ {int name; } ;


 size_t DAI_DSP_CODEC ;

 int WM5102_FLL1 ;
 int WM5102_FLL2 ;
 int pr_err (char*,int) ;
 int snd_soc_component_set_pll (struct snd_soc_component*,int ,int ,int ,int ) ;
 struct snd_soc_pcm_runtime* snd_soc_get_pcm_runtime (struct snd_soc_card*,int ) ;

__attribute__((used)) static int bells_set_bias_level_post(struct snd_soc_card *card,
         struct snd_soc_dapm_context *dapm,
         enum snd_soc_bias_level level)
{
 struct snd_soc_pcm_runtime *rtd;
 struct snd_soc_dai *codec_dai;
 struct snd_soc_component *component;
 struct bells_drvdata *bells = card->drvdata;
 int ret;

 rtd = snd_soc_get_pcm_runtime(card, card->dai_link[DAI_DSP_CODEC].name);
 codec_dai = rtd->codec_dai;
 component = codec_dai->component;

 if (dapm->dev != codec_dai->dev)
  return 0;

 switch (level) {
 case 128:
  ret = snd_soc_component_set_pll(component, WM5102_FLL1, 0, 0, 0);
  if (ret < 0) {
   pr_err("Failed to stop FLL: %d\n", ret);
   return ret;
  }

  if (bells->asyncclk_rate) {
   ret = snd_soc_component_set_pll(component, WM5102_FLL2,
          0, 0, 0);
   if (ret < 0) {
    pr_err("Failed to stop FLL: %d\n", ret);
    return ret;
   }
  }
  break;

 default:
  break;
 }

 dapm->bias_level = level;

 return 0;
}
