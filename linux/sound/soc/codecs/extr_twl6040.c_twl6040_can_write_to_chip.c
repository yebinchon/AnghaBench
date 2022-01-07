
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040_data {int dl1_unmuted; int dl2_unmuted; } ;
struct snd_soc_component {int dummy; } ;







 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static bool twl6040_can_write_to_chip(struct snd_soc_component *component,
      unsigned int reg)
{
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);

 switch (reg) {
 case 129:
 case 128:
 case 132:

  return priv->dl1_unmuted;
 case 131:
 case 130:
  return priv->dl2_unmuted;
 default:
  return 1;
 }
}
