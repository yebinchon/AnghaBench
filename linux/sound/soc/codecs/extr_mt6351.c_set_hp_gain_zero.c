
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int regmap; } ;


 int MT6351_ZCD_CON2 ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void set_hp_gain_zero(struct snd_soc_component *cmpnt)
{
 regmap_update_bits(cmpnt->regmap, MT6351_ZCD_CON2,
      0x1f << 7, 0x8 << 7);
 regmap_update_bits(cmpnt->regmap, MT6351_ZCD_CON2,
      0x1f << 0, 0x8 << 0);
}
