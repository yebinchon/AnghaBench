
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct evea_priv {struct regmap* regmap; } ;


 int ADAC1ODC ;
 int ADAC1ODC_HP_DIS_RES_MASK ;
 int ADAC1ODC_HP_DIS_RES_ON ;
 int ADACSEQ1 (int) ;
 int ADACSEQ1_MMUTE ;
 int AHPOUTPOW ;
 int AHPOUTPOW_HP_ON ;
 int ALO1OUTPOW ;
 int ALO1OUTPOW_LO1_ON ;
 int ALO2OUTPOW ;
 int ALO2OUTPOW_LO2_ON ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void evea_set_power_state_off(struct evea_priv *evea)
{
 struct regmap *map = evea->regmap;

 regmap_update_bits(map, ADAC1ODC, ADAC1ODC_HP_DIS_RES_MASK,
      ADAC1ODC_HP_DIS_RES_ON);

 regmap_update_bits(map, ADACSEQ1(0), ADACSEQ1_MMUTE,
      ADACSEQ1_MMUTE);
 regmap_update_bits(map, ADACSEQ1(1), ADACSEQ1_MMUTE,
      ADACSEQ1_MMUTE);
 regmap_update_bits(map, ADACSEQ1(2), ADACSEQ1_MMUTE,
      ADACSEQ1_MMUTE);

 regmap_update_bits(map, ALO1OUTPOW, ALO1OUTPOW_LO1_ON, 0);
 regmap_update_bits(map, ALO2OUTPOW, ALO2OUTPOW_LO2_ON, 0);
 regmap_update_bits(map, AHPOUTPOW, AHPOUTPOW_HP_ON, 0);
}
