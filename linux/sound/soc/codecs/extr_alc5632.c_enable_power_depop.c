
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int ALC5632_ADD1_POWER_EN ;
 int ALC5632_ADD2_POWER_EN ;
 int ALC5632_ADD3_POWER_EN ;
 int ALC5632_MISC_CTRL ;
 int ALC5632_MISC_HP_DEPOP_MODE2_EN ;
 int ALC5632_PWR_ADD1_SOFTGEN_EN ;
 int ALC5632_PWR_DOWN_CTRL_STATUS ;
 int ALC5632_PWR_DOWN_CTRL_STATUS_MASK ;
 int ALC5632_PWR_MANAG_ADD1 ;
 int ALC5632_PWR_MANAG_ADD2 ;
 int ALC5632_PWR_MANAG_ADD3 ;
 int msleep (int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void enable_power_depop(struct snd_soc_component *component)
{
 snd_soc_component_update_bits(component, ALC5632_PWR_MANAG_ADD1,
    ALC5632_PWR_ADD1_SOFTGEN_EN,
    ALC5632_PWR_ADD1_SOFTGEN_EN);

 snd_soc_component_update_bits(component, ALC5632_PWR_MANAG_ADD3,
    ALC5632_ADD3_POWER_EN,
    ALC5632_ADD3_POWER_EN);

 snd_soc_component_update_bits(component, ALC5632_MISC_CTRL,
    ALC5632_MISC_HP_DEPOP_MODE2_EN,
    ALC5632_MISC_HP_DEPOP_MODE2_EN);



 snd_soc_component_update_bits(component, ALC5632_PWR_DOWN_CTRL_STATUS,
    ALC5632_PWR_DOWN_CTRL_STATUS_MASK,
    0);

 msleep(500);

 snd_soc_component_update_bits(component, ALC5632_PWR_MANAG_ADD2,
    ALC5632_ADD2_POWER_EN,
    ALC5632_ADD2_POWER_EN);

 snd_soc_component_update_bits(component, ALC5632_PWR_MANAG_ADD1,
    ALC5632_ADD1_POWER_EN,
    ALC5632_ADD1_POWER_EN);


 snd_soc_component_update_bits(component, ALC5632_MISC_CTRL,
    ALC5632_MISC_HP_DEPOP_MODE2_EN,
    0);

}
