
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct ak4458_priv {int dummy; } ;


 int ak4458_power_off (struct ak4458_priv*) ;
 struct ak4458_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void ak4458_remove(struct snd_soc_component *component)
{
 struct ak4458_priv *ak4458 = snd_soc_component_get_drvdata(component);

 ak4458_power_off(ak4458);
}
