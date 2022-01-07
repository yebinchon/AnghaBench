
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct rt5663_priv {struct snd_soc_jack* hs_jack; } ;


 int rt5663_irq (int ,struct rt5663_priv*) ;
 struct rt5663_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5663_set_jack_detect(struct snd_soc_component *component,
 struct snd_soc_jack *hs_jack, void *data)
{
 struct rt5663_priv *rt5663 = snd_soc_component_get_drvdata(component);

 rt5663->hs_jack = hs_jack;

 rt5663_irq(0, rt5663);

 return 0;
}
