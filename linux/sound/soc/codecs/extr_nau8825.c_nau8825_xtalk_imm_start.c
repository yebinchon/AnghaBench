
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {int xtalk_state; int regmap; } ;


 int NAU8825_ADC_DIG_VOL_MASK ;
 int NAU8825_BIAS_HPL_IMP ;
 int NAU8825_BIAS_HPR_IMP ;
 int NAU8825_BIAS_TESTDACL_EN ;
 int NAU8825_BIAS_TESTDACR_EN ;
 int NAU8825_IMM_EN ;
 int NAU8825_REG_ADC_DGAIN_CTRL ;
 int NAU8825_REG_BIAS_ADJ ;
 int NAU8825_REG_IMM_MODE_CTRL ;


 int msleep (int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void nau8825_xtalk_imm_start(struct nau8825 *nau8825, int vol)
{

 regmap_update_bits(nau8825->regmap, NAU8825_REG_ADC_DGAIN_CTRL,
    NAU8825_ADC_DIG_VOL_MASK, vol);



 regmap_update_bits(nau8825->regmap, NAU8825_REG_BIAS_ADJ,
  NAU8825_BIAS_TESTDACR_EN | NAU8825_BIAS_TESTDACL_EN,
  NAU8825_BIAS_TESTDACL_EN);
 switch (nau8825->xtalk_state) {
 case 128:

  regmap_update_bits(nau8825->regmap, NAU8825_REG_BIAS_ADJ,
   NAU8825_BIAS_HPR_IMP | NAU8825_BIAS_HPL_IMP,
   NAU8825_BIAS_HPR_IMP);
  break;
 case 129:

  regmap_update_bits(nau8825->regmap, NAU8825_REG_BIAS_ADJ,
   NAU8825_BIAS_HPR_IMP | NAU8825_BIAS_HPL_IMP,
   NAU8825_BIAS_HPL_IMP);
  break;
 default:
  break;
 }
 msleep(100);

 regmap_update_bits(nau8825->regmap, NAU8825_REG_IMM_MODE_CTRL,
    NAU8825_IMM_EN, NAU8825_IMM_EN);
}
