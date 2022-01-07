
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int RT1011_SYSTEM_RESET_1 ;
 int RT1011_SYSTEM_RESET_2 ;
 int RT1011_SYSTEM_RESET_3 ;

 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int rt1011_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 switch (level) {
 case 128:
  snd_soc_component_write(component,
   RT1011_SYSTEM_RESET_1, 0x0000);
  snd_soc_component_write(component,
   RT1011_SYSTEM_RESET_2, 0x0000);
  snd_soc_component_write(component,
   RT1011_SYSTEM_RESET_3, 0x0001);
  snd_soc_component_write(component,
   RT1011_SYSTEM_RESET_1, 0x003f);
  snd_soc_component_write(component,
   RT1011_SYSTEM_RESET_2, 0x7fd7);
  snd_soc_component_write(component,
   RT1011_SYSTEM_RESET_3, 0x770f);
  break;
 default:
  break;
 }

 return 0;
}
