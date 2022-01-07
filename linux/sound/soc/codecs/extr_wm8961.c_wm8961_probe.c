
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 int WM8961_ADCVU ;
 int WM8961_ADC_DAC_CONTROL_2 ;
 int WM8961_CHARGE_PUMP_B ;
 int WM8961_CLOCKING_3 ;
 int WM8961_CP_DYN_PWR_MASK ;
 int WM8961_DACSMM ;
 int WM8961_IPVU ;
 int WM8961_LO1ZC ;
 int WM8961_LOUT1_VOLUME ;
 int WM8961_LOUT2_VOLUME ;
 int WM8961_MANUAL_MODE ;
 int WM8961_OUT1VU ;
 int WM8961_RIGHT_ADC_VOLUME ;
 int WM8961_RIGHT_INPUT_VOLUME ;
 int WM8961_ROUT1_VOLUME ;
 int WM8961_ROUT2_VOLUME ;
 int WM8961_SPKLZC ;
 int WM8961_SPKRZC ;
 int WM8961_SPKVU ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8961_probe(struct snd_soc_component *component)
{
 u16 reg;


 reg = snd_soc_component_read32(component, WM8961_CHARGE_PUMP_B);
 reg |= WM8961_CP_DYN_PWR_MASK;
 snd_soc_component_write(component, WM8961_CHARGE_PUMP_B, reg);



 reg = snd_soc_component_read32(component, WM8961_ROUT1_VOLUME);
 snd_soc_component_write(component, WM8961_ROUT1_VOLUME,
       reg | WM8961_LO1ZC | WM8961_OUT1VU);
 snd_soc_component_write(component, WM8961_LOUT1_VOLUME, reg | WM8961_LO1ZC);
 reg = snd_soc_component_read32(component, WM8961_ROUT2_VOLUME);
 snd_soc_component_write(component, WM8961_ROUT2_VOLUME,
       reg | WM8961_SPKRZC | WM8961_SPKVU);
 snd_soc_component_write(component, WM8961_LOUT2_VOLUME, reg | WM8961_SPKLZC);

 reg = snd_soc_component_read32(component, WM8961_RIGHT_ADC_VOLUME);
 snd_soc_component_write(component, WM8961_RIGHT_ADC_VOLUME, reg | WM8961_ADCVU);
 reg = snd_soc_component_read32(component, WM8961_RIGHT_INPUT_VOLUME);
 snd_soc_component_write(component, WM8961_RIGHT_INPUT_VOLUME, reg | WM8961_IPVU);


 reg = snd_soc_component_read32(component, WM8961_ADC_DAC_CONTROL_2);
 reg |= WM8961_DACSMM;
 snd_soc_component_write(component, WM8961_ADC_DAC_CONTROL_2, reg);




 reg = snd_soc_component_read32(component, WM8961_CLOCKING_3);
 reg &= ~WM8961_MANUAL_MODE;
 snd_soc_component_write(component, WM8961_CLOCKING_3, reg);

 return 0;
}
