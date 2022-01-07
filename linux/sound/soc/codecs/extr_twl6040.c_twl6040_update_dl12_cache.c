
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl6040_data {int* dl12_cache; } ;
struct snd_soc_component {int dummy; } ;







 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static inline void twl6040_update_dl12_cache(struct snd_soc_component *component,
          u8 reg, u8 value)
{
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);

 switch (reg) {
 case 129:
 case 128:
 case 132:
 case 131:
 case 130:
  priv->dl12_cache[reg - 129] = value;
  break;
 default:
  break;
 }
}
