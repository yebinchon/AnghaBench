
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5660_priv {struct snd_soc_component* component; } ;


 struct rt5660_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5660_probe(struct snd_soc_component *component)
{
 struct rt5660_priv *rt5660 = snd_soc_component_get_drvdata(component);

 rt5660->component = component;

 return 0;
}
