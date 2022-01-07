
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct twl4030_priv {unsigned int* ctl_cache; } ;
struct snd_soc_component {int dummy; } ;


 unsigned int EIO ;
 unsigned int TWL4030_CACHEREGNUM ;
 int TWL4030_MODULE_AUDIO_VOICE ;






 struct twl4030_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int twl_i2c_read_u8 (int ,unsigned int*,unsigned int) ;

__attribute__((used)) static unsigned int twl4030_read(struct snd_soc_component *component, unsigned int reg)
{
 struct twl4030_priv *twl4030 = snd_soc_component_get_drvdata(component);
 u8 value = 0;

 if (reg >= TWL4030_CACHEREGNUM)
  return -EIO;

 switch (reg) {
 case 133:
 case 129:
 case 128:
 case 131:
 case 130:
 case 132:
  value = twl4030->ctl_cache[reg - 133];
  break;
 default:
  twl_i2c_read_u8(TWL4030_MODULE_AUDIO_VOICE, &value, reg);
  break;
 }

 return value;
}
