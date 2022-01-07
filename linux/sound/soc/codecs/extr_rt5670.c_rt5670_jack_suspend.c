
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5670_priv {int jack_type; int jack_type_saved; } ;


 int rt5670_headset_detect (struct snd_soc_component*,int ) ;
 struct rt5670_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

void rt5670_jack_suspend(struct snd_soc_component *component)
{
 struct rt5670_priv *rt5670 = snd_soc_component_get_drvdata(component);

 rt5670->jack_type_saved = rt5670->jack_type;
 rt5670_headset_detect(component, 0);
}
