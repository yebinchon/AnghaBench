
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int DAVINCI_VC_REG12 ;
 int DAVINCI_VC_REG12_POWER_ALL_OFF ;
 int DAVINCI_VC_REG12_POWER_ALL_ON ;




 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int cq93vc_set_bias_level(struct snd_soc_component *component,
    enum snd_soc_bias_level level)
{
 switch (level) {
 case 130:
  snd_soc_component_write(component, DAVINCI_VC_REG12,
        DAVINCI_VC_REG12_POWER_ALL_ON);
  break;
 case 129:
  break;
 case 128:
  snd_soc_component_write(component, DAVINCI_VC_REG12,
        DAVINCI_VC_REG12_POWER_ALL_OFF);
  break;
 case 131:

  snd_soc_component_write(component, DAVINCI_VC_REG12,
        DAVINCI_VC_REG12_POWER_ALL_OFF);
  break;
 }

 return 0;
}
