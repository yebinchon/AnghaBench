
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 scalar_t__ HP_POWER_EVENT ;
 int SGTL5000_ADC_POWERUP ;
 int SGTL5000_DAC_POWERUP ;
 int SGTL5000_HP_POWERUP ;
 scalar_t__ SGTL5000_HP_SEL_LINE_IN ;
 scalar_t__ hp_sel_input (struct snd_soc_component*) ;

__attribute__((used)) static int vag_power_consumers(struct snd_soc_component *component,
          u16 ana_pwr_reg, u32 source)
{
 int consumers = 0;


 if (ana_pwr_reg & SGTL5000_DAC_POWERUP)
  consumers++;
 if (ana_pwr_reg & SGTL5000_ADC_POWERUP)
  consumers++;







 if (source == HP_POWER_EVENT) {
  if (hp_sel_input(component) == SGTL5000_HP_SEL_LINE_IN)
   consumers++;
 } else {
  if (ana_pwr_reg & SGTL5000_HP_POWERUP)
   consumers++;
 }

 return consumers;
}
