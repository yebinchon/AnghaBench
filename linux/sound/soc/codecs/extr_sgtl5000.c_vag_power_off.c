
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 int SGTL5000_CHIP_ANA_POWER ;
 int SGTL5000_VAG_POWERDOWN_DELAY ;
 int SGTL5000_VAG_POWERUP ;
 int msleep (int ) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int ) ;
 int vag_power_consumers (struct snd_soc_component*,int,int ) ;

__attribute__((used)) static void vag_power_off(struct snd_soc_component *component, u32 source)
{
 u16 ana_pwr = snd_soc_component_read32(component,
          SGTL5000_CHIP_ANA_POWER);

 if (!(ana_pwr & SGTL5000_VAG_POWERUP))
  return;
 if (vag_power_consumers(component, ana_pwr, source) >= 2)
  return;

 snd_soc_component_update_bits(component, SGTL5000_CHIP_ANA_POWER,
  SGTL5000_VAG_POWERUP, 0);




 msleep(SGTL5000_VAG_POWERDOWN_DELAY);
}
