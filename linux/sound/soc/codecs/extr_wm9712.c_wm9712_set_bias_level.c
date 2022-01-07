
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int AC97_EXTENDED_MSTATUS ;
 int AC97_POWERDOWN ;




 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm9712_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
 case 129:
  break;
 case 128:
  snd_soc_component_write(component, AC97_POWERDOWN, 0x0000);
  break;
 case 131:

  snd_soc_component_write(component, AC97_EXTENDED_MSTATUS, 0xffff);
  snd_soc_component_write(component, AC97_POWERDOWN, 0xffff);
  break;
 }
 return 0;
}
