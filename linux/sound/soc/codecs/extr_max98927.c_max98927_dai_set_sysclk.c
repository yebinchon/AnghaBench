
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct max98927_priv {unsigned int sysclk; } ;


 struct max98927_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int max98927_dai_set_sysclk(struct snd_soc_dai *dai,
 int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct max98927_priv *max98927 = snd_soc_component_get_drvdata(component);

 max98927->sysclk = freq;
 return 0;
}
