
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int CS42L42_HP_ANA_AMUTE_MASK ;
 int CS42L42_HP_ANA_BMUTE_MASK ;
 int CS42L42_HP_CTL ;
 int CS42L42_HP_FULL_SCALE_VOL_MASK ;
 int CS42L42_LOAD_DET_RCSTAT ;
 int CS42L42_OSC_SWITCH ;
 int CS42L42_PLL_CTL1 ;
 int CS42L42_PLL_START_MASK ;
 int CS42L42_PLL_START_SHIFT ;
 unsigned int CS42L42_RLA_STAT_15_OHM ;
 unsigned int CS42L42_RLA_STAT_MASK ;
 unsigned int CS42L42_RLA_STAT_SHIFT ;
 int CS42L42_SCLK_PRESENT_MASK ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int cs42l42_digital_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 unsigned int regval;
 u8 fullScaleVol;

 if (mute) {



  snd_soc_component_update_bits(component, CS42L42_OSC_SWITCH,
      CS42L42_SCLK_PRESENT_MASK, 0);

  snd_soc_component_update_bits(component, CS42L42_PLL_CTL1,
    CS42L42_PLL_START_MASK,
    0 << CS42L42_PLL_START_SHIFT);


  snd_soc_component_update_bits(component, CS42L42_HP_CTL,
    CS42L42_HP_ANA_AMUTE_MASK |
    CS42L42_HP_ANA_BMUTE_MASK,
    CS42L42_HP_ANA_AMUTE_MASK |
    CS42L42_HP_ANA_BMUTE_MASK);
 } else {
  snd_soc_component_update_bits(component, CS42L42_PLL_CTL1,
    CS42L42_PLL_START_MASK,
    1 << CS42L42_PLL_START_SHIFT);

  regval = snd_soc_component_read32(component, CS42L42_LOAD_DET_RCSTAT);
  if (((regval & CS42L42_RLA_STAT_MASK) >>
   CS42L42_RLA_STAT_SHIFT) == CS42L42_RLA_STAT_15_OHM) {
   fullScaleVol = CS42L42_HP_FULL_SCALE_VOL_MASK;
  } else {
   fullScaleVol = 0;
  }


  snd_soc_component_update_bits(component, CS42L42_HP_CTL,
    CS42L42_HP_ANA_AMUTE_MASK |
    CS42L42_HP_ANA_BMUTE_MASK |
    CS42L42_HP_FULL_SCALE_VOL_MASK, fullScaleVol);


  snd_soc_component_update_bits(component, CS42L42_OSC_SWITCH,
    CS42L42_SCLK_PRESENT_MASK,
    CS42L42_SCLK_PRESENT_MASK);
 }

 return 0;
}
