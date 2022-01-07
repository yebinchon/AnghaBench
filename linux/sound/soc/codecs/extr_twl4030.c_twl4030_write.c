
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_priv {unsigned int* ctl_cache; } ;
struct snd_soc_component {int dummy; } ;


 int TWL4030_MODULE_AUDIO_VOICE ;






 struct twl4030_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 scalar_t__ twl4030_can_write_to_chip (struct twl4030_priv*,unsigned int) ;
 int twl_i2c_write_u8 (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int twl4030_write(struct snd_soc_component *component, unsigned int reg,
    unsigned int value)
{
 struct twl4030_priv *twl4030 = snd_soc_component_get_drvdata(component);


 switch (reg) {
 case 133:
 case 129:
 case 128:
 case 131:
 case 130:
 case 132:
  twl4030->ctl_cache[reg - 133] = value;
  break;
 default:
  break;
 }

 if (twl4030_can_write_to_chip(twl4030, reg))
  return twl_i2c_write_u8(TWL4030_MODULE_AUDIO_VOICE, value, reg);

 return 0;
}
