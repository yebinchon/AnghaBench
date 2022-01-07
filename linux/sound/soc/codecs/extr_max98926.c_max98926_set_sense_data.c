
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max98926_priv {int v_slot; int regmap; int i_slot; int interleave_mode; } ;


 int MAX98926_DAI_IMON_EN_MASK ;
 int MAX98926_DAI_IMON_SLOT_MASK ;
 int MAX98926_DAI_INTERLEAVE_MASK ;
 int MAX98926_DAI_INTERLEAVE_SLOT_MASK ;
 int MAX98926_DAI_VMON_EN_MASK ;
 int MAX98926_DAI_VMON_SLOT_MASK ;
 int MAX98926_DOUT_CFG_IMON ;
 int MAX98926_DOUT_CFG_VBAT ;
 int MAX98926_DOUT_CFG_VMON ;
 int MAX98926_FORMAT ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void max98926_set_sense_data(struct max98926_priv *max98926)
{
 regmap_update_bits(max98926->regmap,
  MAX98926_DOUT_CFG_VMON,
  MAX98926_DAI_VMON_EN_MASK,
  MAX98926_DAI_VMON_EN_MASK);
 regmap_update_bits(max98926->regmap,
  MAX98926_DOUT_CFG_IMON,
  MAX98926_DAI_IMON_EN_MASK,
  MAX98926_DAI_IMON_EN_MASK);

 if (!max98926->interleave_mode) {

  regmap_update_bits(max98926->regmap,
   MAX98926_DOUT_CFG_VMON,
   MAX98926_DAI_VMON_SLOT_MASK,
   max98926->v_slot);

  regmap_update_bits(max98926->regmap,
   MAX98926_DOUT_CFG_IMON,
   MAX98926_DAI_IMON_SLOT_MASK,
   max98926->i_slot);
 } else {

  regmap_update_bits(max98926->regmap,
   MAX98926_FORMAT,
   MAX98926_DAI_INTERLEAVE_MASK,
   MAX98926_DAI_INTERLEAVE_MASK);

  regmap_update_bits(max98926->regmap,
   MAX98926_DOUT_CFG_VBAT,
   MAX98926_DAI_INTERLEAVE_SLOT_MASK,
   max98926->v_slot);
 }
}
