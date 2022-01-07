
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int AK4535_DAC ;
 int AK4535_PM1 ;
 int AK4535_PM2 ;




 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int ak4535_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
  snd_soc_component_update_bits(component, AK4535_DAC, 0x20, 0);
  break;
 case 129:
  snd_soc_component_update_bits(component, AK4535_DAC, 0x20, 0x20);
  break;
 case 128:
  snd_soc_component_update_bits(component, AK4535_PM1, 0x80, 0x80);
  snd_soc_component_update_bits(component, AK4535_PM2, 0x80, 0);
  break;
 case 131:
  snd_soc_component_update_bits(component, AK4535_PM1, 0x80, 0);
  break;
 }
 return 0;
}
