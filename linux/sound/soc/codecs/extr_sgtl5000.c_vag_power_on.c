
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_soc_component {int dummy; } ;


 scalar_t__ HP_POWER_EVENT ;
 int SGTL5000_CHIP_ANA_POWER ;
 scalar_t__ SGTL5000_HP_SEL_LINE_IN ;
 int SGTL5000_VAG_POWERUP ;
 int SGTL5000_VAG_POWERUP_DELAY ;
 scalar_t__ hp_sel_input (struct snd_soc_component*) ;
 int msleep (int ) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static void vag_power_on(struct snd_soc_component *component, u32 source)
{
 if (snd_soc_component_read32(component, SGTL5000_CHIP_ANA_POWER) &
     SGTL5000_VAG_POWERUP)
  return;

 snd_soc_component_update_bits(component, SGTL5000_CHIP_ANA_POWER,
       SGTL5000_VAG_POWERUP, SGTL5000_VAG_POWERUP);




 if (hp_sel_input(component) == SGTL5000_HP_SEL_LINE_IN &&
     source == HP_POWER_EVENT)
  msleep(SGTL5000_VAG_POWERUP_DELAY);
}
