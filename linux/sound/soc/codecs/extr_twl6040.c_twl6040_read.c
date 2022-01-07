
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct twl6040_data {unsigned int* dl12_cache; } ;
struct twl6040 {int dummy; } ;
struct snd_soc_component {int dummy; } ;


 unsigned int EIO ;
 unsigned int TWL6040_CACHEREGNUM ;





 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct twl6040* to_twl6040 (struct snd_soc_component*) ;
 unsigned int twl6040_reg_read (struct twl6040*,unsigned int) ;

__attribute__((used)) static unsigned int twl6040_read(struct snd_soc_component *component, unsigned int reg)
{
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);
 struct twl6040 *twl6040 = to_twl6040(component);
 u8 value;

 if (reg >= TWL6040_CACHEREGNUM)
  return -EIO;

 switch (reg) {
 case 129:
 case 128:
 case 132:
 case 131:
 case 130:
  value = priv->dl12_cache[reg - 129];
  break;
 default:
  value = twl6040_reg_read(twl6040, reg);
  break;
 }

 return value;
}
