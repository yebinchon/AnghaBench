
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {int regmap; } ;


 int NAU8825_ADC_VREFSEL_MASK ;
 int NAU8825_ADC_VREFSEL_VMID_PLUS_0_5DB ;
 int NAU8825_POWERUP_ADCL ;
 int NAU8825_REG_ANALOG_ADC_2 ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void nau8825_xtalk_prepare_adc(struct nau8825 *nau8825)
{

 regmap_update_bits(nau8825->regmap, NAU8825_REG_ANALOG_ADC_2,
  NAU8825_POWERUP_ADCL | NAU8825_ADC_VREFSEL_MASK,
  NAU8825_POWERUP_ADCL | NAU8825_ADC_VREFSEL_VMID_PLUS_0_5DB);
}
