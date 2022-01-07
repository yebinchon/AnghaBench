
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int regmap; } ;


 int MT6351_ZCD_CON0 ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static void hp_zcd_disable(struct snd_soc_component *cmpnt)
{
 regmap_write(cmpnt->regmap, MT6351_ZCD_CON0, 0x0000);
}
