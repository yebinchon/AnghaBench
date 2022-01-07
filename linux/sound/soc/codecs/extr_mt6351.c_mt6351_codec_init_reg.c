
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int regmap; } ;


 int MT6351_AFE_PMIC_NEWIF_CFG2 ;
 int MT6351_AUDDEC_ANA_CON0 ;
 int MT6351_AUDDEC_ANA_CON3 ;
 int MT6351_AUDDEC_ANA_CON9 ;
 int MT6351_TOP_CKPDN_CON0_SET ;
 int MT6351_TOP_CLKSQ ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int mt6351_codec_init_reg(struct snd_soc_component *cmpnt)
{

 regmap_update_bits(cmpnt->regmap, MT6351_TOP_CLKSQ, 0x0001, 0x0);

 regmap_update_bits(cmpnt->regmap, MT6351_AUDDEC_ANA_CON9,
      0x1000, 0x1000);

 regmap_update_bits(cmpnt->regmap, MT6351_TOP_CKPDN_CON0_SET,
      0x3800, 0x3800);

 regmap_update_bits(cmpnt->regmap, MT6351_AUDDEC_ANA_CON0,
      0xe000, 0xe000);

 regmap_update_bits(cmpnt->regmap, MT6351_AUDDEC_ANA_CON3,
      0x20, 0x20);

 regmap_update_bits(cmpnt->regmap, MT6351_AFE_PMIC_NEWIF_CFG2,
      0x8000, 0x8000);
 return 0;
}
