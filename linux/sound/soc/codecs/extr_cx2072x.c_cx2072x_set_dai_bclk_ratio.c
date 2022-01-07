
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cx2072x_priv {unsigned int bclk_ratio; } ;


 struct cx2072x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cx2072x_set_dai_bclk_ratio(struct snd_soc_dai *dai,
          unsigned int ratio)
{
 struct snd_soc_component *codec = dai->component;
 struct cx2072x_priv *cx2072x = snd_soc_component_get_drvdata(codec);

 cx2072x->bclk_ratio = ratio;
 return 0;
}
