
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max98925_priv {int v_slot; int i_slot; int regmap; } ;


 int M98925_DAI_IMON_EN_MASK ;
 int M98925_DAI_IMON_SLOT_MASK ;
 int M98925_DAI_IMON_SLOT_SHIFT ;
 int M98925_DAI_VMON_EN_MASK ;
 int M98925_DAI_VMON_SLOT_MASK ;
 int M98925_DAI_VMON_SLOT_SHIFT ;
 int MAX98925_DOUT_CFG_IMON ;
 int MAX98925_DOUT_CFG_VMON ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void max98925_set_sense_data(struct max98925_priv *max98925)
{

 regmap_update_bits(max98925->regmap,
  MAX98925_DOUT_CFG_VMON,
  M98925_DAI_VMON_EN_MASK, M98925_DAI_VMON_EN_MASK);
 regmap_update_bits(max98925->regmap,
  MAX98925_DOUT_CFG_VMON,
  M98925_DAI_VMON_SLOT_MASK,
  max98925->v_slot << M98925_DAI_VMON_SLOT_SHIFT);

 regmap_update_bits(max98925->regmap,
  MAX98925_DOUT_CFG_IMON,
  M98925_DAI_IMON_EN_MASK, M98925_DAI_IMON_EN_MASK);
 regmap_update_bits(max98925->regmap,
  MAX98925_DOUT_CFG_IMON,
  M98925_DAI_IMON_SLOT_MASK,
  max98925->i_slot << M98925_DAI_IMON_SLOT_SHIFT);
}
