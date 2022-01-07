
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8523_priv {int rate_constraint; int sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int runtime; } ;


 int EINVAL ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int dev_err (int ,char*) ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,int *) ;
 struct wm8523_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8523_startup(struct snd_pcm_substream *substream,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct wm8523_priv *wm8523 = snd_soc_component_get_drvdata(component);




 if (!wm8523->sysclk) {
  dev_err(component->dev,
   "No MCLK configured, call set_sysclk() on init\n");
  return -EINVAL;
 }

 snd_pcm_hw_constraint_list(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_RATE,
       &wm8523->rate_constraint);

 return 0;
}
