
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct rt5659_priv {struct snd_soc_jack* hs_jack; } ;


 int rt5659_irq (int ,struct rt5659_priv*) ;
 struct rt5659_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int rt5659_set_jack_detect(struct snd_soc_component *component,
 struct snd_soc_jack *hs_jack)
{
 struct rt5659_priv *rt5659 = snd_soc_component_get_drvdata(component);

 rt5659->hs_jack = hs_jack;

 rt5659_irq(0, rt5659);

 return 0;
}
