
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int runtime; } ;
struct adav80x {int rate; } ;


 int SNDRV_PCM_HW_PARAM_RATE ;
 int snd_pcm_hw_constraint_single (int ,int ,int ) ;
 struct adav80x* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_is_active (struct snd_soc_component*) ;

__attribute__((used)) static int adav80x_dai_startup(struct snd_pcm_substream *substream,
 struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct adav80x *adav80x = snd_soc_component_get_drvdata(component);

 if (!snd_soc_component_is_active(component) || !adav80x->rate)
  return 0;

 return snd_pcm_hw_constraint_single(substream->runtime,
   SNDRV_PCM_HW_PARAM_RATE, adav80x->rate);
}
