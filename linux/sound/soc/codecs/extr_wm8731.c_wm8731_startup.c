
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8731_priv {scalar_t__ constraints; } ;
struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {int runtime; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_constraint_list (int ,int ,int ,scalar_t__) ;
 struct wm8731_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int wm8731_startup(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct wm8731_priv *wm8731 = snd_soc_component_get_drvdata(dai->component);

 if (wm8731->constraints)
  snd_pcm_hw_constraint_list(substream->runtime, 0,
        SNDRV_PCM_HW_PARAM_RATE,
        wm8731->constraints);

 return 0;
}
