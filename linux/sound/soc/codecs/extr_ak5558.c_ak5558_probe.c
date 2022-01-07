
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct ak5558_priv {int dummy; } ;


 int ak5558_power_on (struct ak5558_priv*) ;
 int ak5558_set_mcki (struct snd_soc_component*) ;
 struct ak5558_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak5558_probe(struct snd_soc_component *component)
{
 struct ak5558_priv *ak5558 = snd_soc_component_get_drvdata(component);

 ak5558_power_on(ak5558);
 return ak5558_set_mcki(component);
}
