
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct pcm512x_priv {unsigned int bclk_ratio; } ;


 int EINVAL ;
 struct pcm512x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm512x_set_bclk_ratio(struct snd_soc_dai *dai, unsigned int ratio)
{
 struct snd_soc_component *component = dai->component;
 struct pcm512x_priv *pcm512x = snd_soc_component_get_drvdata(component);

 if (ratio > 256)
  return -EINVAL;

 pcm512x->bclk_ratio = ratio;

 return 0;
}
