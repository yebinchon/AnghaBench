
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int AC_PWRST_D0 ;
 int AC_PWRST_D3 ;
 int RT286_DC_GAIN ;
 int RT286_SET_AUDIO_POWER ;



 int mdelay (int) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int rt286_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 switch (level) {
 case 129:
  if (128 == snd_soc_component_get_bias_level(component)) {
   snd_soc_component_write(component,
    RT286_SET_AUDIO_POWER, AC_PWRST_D0);
   snd_soc_component_update_bits(component,
    RT286_DC_GAIN, 0x200, 0x200);
  }
  break;

 case 130:
  mdelay(10);
  snd_soc_component_update_bits(component,
   RT286_DC_GAIN, 0x200, 0x0);

  break;

 case 128:
  snd_soc_component_write(component,
   RT286_SET_AUDIO_POWER, AC_PWRST_D3);
  break;

 default:
  break;
 }

 return 0;
}
