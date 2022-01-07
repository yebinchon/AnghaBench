
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int RT5651_D_MISC ;
 int RT5651_PLL_MODE_1 ;
 int RT5651_PWR_ANLG1 ;
 int RT5651_PWR_ANLG2 ;
 int RT5651_PWR_BG ;
 int RT5651_PWR_DIG1 ;
 int RT5651_PWR_DIG2 ;
 int RT5651_PWR_FV1 ;
 int RT5651_PWR_FV2 ;
 int RT5651_PWR_JD_M ;
 int RT5651_PWR_LDO_DVO_MASK ;
 int RT5651_PWR_MB ;
 int RT5651_PWR_MIXER ;
 int RT5651_PWR_PLL ;
 int RT5651_PWR_VOL ;
 int RT5651_PWR_VREF1 ;
 int RT5651_PWR_VREF2 ;



 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt5651_set_bias_level(struct snd_soc_component *component,
   enum snd_soc_bias_level level)
{
 switch (level) {
 case 129:
  if (128 == snd_soc_component_get_bias_level(component)) {
   if (snd_soc_component_read32(component, RT5651_PLL_MODE_1) & 0x9200)
    snd_soc_component_update_bits(component, RT5651_D_MISC,
          0xc00, 0xc00);
  }
  break;
 case 128:
  if (130 == snd_soc_component_get_bias_level(component)) {
   snd_soc_component_update_bits(component, RT5651_PWR_ANLG1,
    RT5651_PWR_VREF1 | RT5651_PWR_MB |
    RT5651_PWR_BG | RT5651_PWR_VREF2,
    RT5651_PWR_VREF1 | RT5651_PWR_MB |
    RT5651_PWR_BG | RT5651_PWR_VREF2);
   usleep_range(10000, 15000);
   snd_soc_component_update_bits(component, RT5651_PWR_ANLG1,
    RT5651_PWR_FV1 | RT5651_PWR_FV2,
    RT5651_PWR_FV1 | RT5651_PWR_FV2);
   snd_soc_component_update_bits(component, RT5651_D_MISC, 0x1, 0x1);
  }
  break;

 case 130:
  snd_soc_component_write(component, RT5651_D_MISC, 0x0010);
  snd_soc_component_write(component, RT5651_PWR_DIG1, 0x0000);
  snd_soc_component_write(component, RT5651_PWR_DIG2, 0x0000);
  snd_soc_component_write(component, RT5651_PWR_VOL, 0x0000);
  snd_soc_component_write(component, RT5651_PWR_MIXER, 0x0000);

  snd_soc_component_update_bits(component, RT5651_PWR_ANLG1,
   ~RT5651_PWR_LDO_DVO_MASK, 0);

  snd_soc_component_update_bits(component, RT5651_PWR_ANLG2,
        ~(RT5651_PWR_PLL | RT5651_PWR_JD_M), 0);
  break;

 default:
  break;
 }

 return 0;
}
