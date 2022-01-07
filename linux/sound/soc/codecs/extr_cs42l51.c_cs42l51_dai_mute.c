
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int CS42L51_DAC_OUT_CTL ;
 int CS42L51_DAC_OUT_CTL_DACA_MUTE ;
 int CS42L51_DAC_OUT_CTL_DACB_MUTE ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int cs42l51_dai_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 int reg;
 int mask = CS42L51_DAC_OUT_CTL_DACA_MUTE|CS42L51_DAC_OUT_CTL_DACB_MUTE;

 reg = snd_soc_component_read32(component, CS42L51_DAC_OUT_CTL);

 if (mute)
  reg |= mask;
 else
  reg &= ~mask;

 return snd_soc_component_write(component, CS42L51_DAC_OUT_CTL, reg);
}
