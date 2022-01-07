
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int regmap; } ;


 int MT6351_ZCD_CON0 ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void hp_zcd_enable(struct snd_soc_component *cmpnt)
{


 regmap_update_bits(cmpnt->regmap, MT6351_ZCD_CON0, 0x7 << 8, 0x1 << 8);
 regmap_update_bits(cmpnt->regmap, MT6351_ZCD_CON0, 0x1 << 7, 0x0 << 7);


 regmap_update_bits(cmpnt->regmap, MT6351_ZCD_CON0, 0x1 << 6, 0x1 << 6);

 regmap_update_bits(cmpnt->regmap, MT6351_ZCD_CON0, 0x3 << 4, 0x0 << 4);
 regmap_update_bits(cmpnt->regmap, MT6351_ZCD_CON0, 0x7 << 1, 0x5 << 1);
 regmap_update_bits(cmpnt->regmap, MT6351_ZCD_CON0, 0x1 << 0, 0x1 << 0);
}
