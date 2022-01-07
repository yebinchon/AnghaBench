
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct pistachio_internal_dac {int regmap; } ;


 struct pistachio_internal_dac* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_init_regmap (struct snd_soc_component*,int ) ;

__attribute__((used)) static int pistachio_internal_dac_codec_probe(struct snd_soc_component *component)
{
 struct pistachio_internal_dac *dac = snd_soc_component_get_drvdata(component);

 snd_soc_component_init_regmap(component, dac->regmap);

 return 0;
}
