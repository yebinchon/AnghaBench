
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct evea_priv {struct regmap* regmap; } ;


 int AANAPOW ;
 int AANAPOW_A_POWD ;
 int ADAC1ODC ;
 int ADAC1ODC_ADAC_RAMPCLT_MASK ;
 int ADAC1ODC_ADAC_RAMPCLT_REDUCE ;
 int ADAC1ODC_HP_DIS_RES_MASK ;
 int ADAC1ODC_HP_DIS_RES_ON ;
 int ADACSEQ2 (int) ;
 int ADACSEQ2_ADACIN_FIX ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void evea_set_power_state_on(struct evea_priv *evea)
{
 struct regmap *map = evea->regmap;

 regmap_update_bits(map, AANAPOW, AANAPOW_A_POWD,
      AANAPOW_A_POWD);

 regmap_update_bits(map, ADAC1ODC, ADAC1ODC_HP_DIS_RES_MASK,
      ADAC1ODC_HP_DIS_RES_ON);

 regmap_update_bits(map, ADAC1ODC, ADAC1ODC_ADAC_RAMPCLT_MASK,
      ADAC1ODC_ADAC_RAMPCLT_REDUCE);

 regmap_update_bits(map, ADACSEQ2(0), ADACSEQ2_ADACIN_FIX, 0);
 regmap_update_bits(map, ADACSEQ2(1), ADACSEQ2_ADACIN_FIX, 0);
 regmap_update_bits(map, ADACSEQ2(2), ADACSEQ2_ADACIN_FIX, 0);
}
