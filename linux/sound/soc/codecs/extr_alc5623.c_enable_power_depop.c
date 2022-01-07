
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct alc5623_priv {int id; } ;


 int ALC5623_ADD1_POWER_EN ;
 int ALC5623_ADD1_POWER_EN_5622 ;
 int ALC5623_ADD2_POWER_EN ;
 int ALC5623_ADD3_POWER_EN ;
 int ALC5623_MISC_CTRL ;
 int ALC5623_MISC_HP_DEPOP_MODE2_EN ;
 int ALC5623_PWR_ADD1_SOFTGEN_EN ;
 int ALC5623_PWR_MANAG_ADD1 ;
 int ALC5623_PWR_MANAG_ADD2 ;
 int ALC5623_PWR_MANAG_ADD3 ;
 int msleep (int) ;
 struct alc5623_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static void enable_power_depop(struct snd_soc_component *component)
{
 struct alc5623_priv *alc5623 = snd_soc_component_get_drvdata(component);

 snd_soc_component_update_bits(component, ALC5623_PWR_MANAG_ADD1,
    ALC5623_PWR_ADD1_SOFTGEN_EN,
    ALC5623_PWR_ADD1_SOFTGEN_EN);

 snd_soc_component_write(component, ALC5623_PWR_MANAG_ADD3, ALC5623_ADD3_POWER_EN);

 snd_soc_component_update_bits(component, ALC5623_MISC_CTRL,
    ALC5623_MISC_HP_DEPOP_MODE2_EN,
    ALC5623_MISC_HP_DEPOP_MODE2_EN);

 msleep(500);

 snd_soc_component_write(component, ALC5623_PWR_MANAG_ADD2, ALC5623_ADD2_POWER_EN);


 if (alc5623->id == 0x22)
  snd_soc_component_write(component, ALC5623_PWR_MANAG_ADD1,
   ALC5623_ADD1_POWER_EN_5622);
 else
  snd_soc_component_write(component, ALC5623_PWR_MANAG_ADD1,
   ALC5623_ADD1_POWER_EN);


 snd_soc_component_update_bits(component, ALC5623_MISC_CTRL,
    ALC5623_MISC_HP_DEPOP_MODE2_EN,
    0);

}
