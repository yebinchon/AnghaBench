
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int ALC5632_MISC_CTRL ;
 int ALC5632_MISC_HP_DEPOP_MUTE_L ;
 int ALC5632_MISC_HP_DEPOP_MUTE_R ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int alc5632_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 u16 hp_mute = ALC5632_MISC_HP_DEPOP_MUTE_L
      |ALC5632_MISC_HP_DEPOP_MUTE_R;
 u16 mute_reg = snd_soc_component_read32(component, ALC5632_MISC_CTRL) & ~hp_mute;

 if (mute)
  mute_reg |= hp_mute;

 return snd_soc_component_write(component, ALC5632_MISC_CTRL, mute_reg);
}
