
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8741_priv {int sysclk_constraints; scalar_t__ sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int ) ;
 struct wm8741_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8741_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct wm8741_priv *wm8741 = snd_soc_component_get_drvdata(component);

 if (wm8741->sysclk)
  snd_pcm_hw_constraint_list(substream->runtime, 0,
    SNDRV_PCM_HW_PARAM_RATE,
    wm8741->sysclk_constraints);

 return 0;
}
