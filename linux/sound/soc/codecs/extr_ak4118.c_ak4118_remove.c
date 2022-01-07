
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct ak4118_priv {int reset; } ;


 int gpiod_set_value (int ,int) ;
 struct ak4118_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void ak4118_remove(struct snd_soc_component *component)
{
 struct ak4118_priv *ak4118 = snd_soc_component_get_drvdata(component);


 gpiod_set_value(ak4118->reset, 1);
}
