
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct evea_priv {scalar_t__ switch_hp; struct regmap* regmap; } ;


 int ADAC1ODC ;
 int ADAC1ODC_HP_DIS_RES_MASK ;
 int ADAC1ODC_HP_DIS_RES_OFF ;
 int ADAC1ODC_HP_DIS_RES_ON ;
 int ADACSEQ1 (int) ;
 int ADACSEQ1_MMUTE ;
 int AHPOUTPOW ;
 int AHPOUTPOW_HP_ON ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static int evea_update_switch_hp(struct evea_priv *evea)
{
 struct regmap *map = evea->regmap;

 if (evea->switch_hp) {
  regmap_update_bits(map, ADACSEQ1(1), ADACSEQ1_MMUTE, 0);

  regmap_update_bits(map, AHPOUTPOW, AHPOUTPOW_HP_ON,
       AHPOUTPOW_HP_ON);

  regmap_update_bits(map, ADAC1ODC, ADAC1ODC_HP_DIS_RES_MASK,
       ADAC1ODC_HP_DIS_RES_OFF);
 } else {
  regmap_update_bits(map, ADAC1ODC, ADAC1ODC_HP_DIS_RES_MASK,
       ADAC1ODC_HP_DIS_RES_ON);

  regmap_update_bits(map, ADACSEQ1(1), ADACSEQ1_MMUTE,
       ADACSEQ1_MMUTE);

  regmap_update_bits(map, AHPOUTPOW, AHPOUTPOW_HP_ON, 0);
 }

 return 0;
}
