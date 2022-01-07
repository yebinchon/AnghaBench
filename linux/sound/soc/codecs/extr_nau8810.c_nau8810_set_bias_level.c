
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct regmap {int dummy; } ;
struct nau8810 {struct regmap* regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int NAU8810_ABIAS_EN ;
 int NAU8810_IOBUF_EN ;
 int NAU8810_REFIMP_300K ;
 int NAU8810_REFIMP_3K ;
 int NAU8810_REFIMP_80K ;
 int NAU8810_REFIMP_MASK ;
 int NAU8810_REG_POWER1 ;
 int NAU8810_REG_POWER2 ;
 int NAU8810_REG_POWER3 ;




 int mdelay (int) ;
 int regcache_sync (struct regmap*) ;
 int regmap_update_bits (struct regmap*,int ,int,int) ;
 int regmap_write (struct regmap*,int ,int ) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct nau8810* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int nau8810_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 struct nau8810 *nau8810 = snd_soc_component_get_drvdata(component);
 struct regmap *map = nau8810->regmap;

 switch (level) {
 case 130:
 case 129:
  regmap_update_bits(map, NAU8810_REG_POWER1,
   NAU8810_REFIMP_MASK, NAU8810_REFIMP_80K);
  break;

 case 128:
  regmap_update_bits(map, NAU8810_REG_POWER1,
   NAU8810_IOBUF_EN | NAU8810_ABIAS_EN,
   NAU8810_IOBUF_EN | NAU8810_ABIAS_EN);

  if (snd_soc_component_get_bias_level(component) == 131) {
   regcache_sync(map);
   regmap_update_bits(map, NAU8810_REG_POWER1,
    NAU8810_REFIMP_MASK, NAU8810_REFIMP_3K);
   mdelay(100);
  }
  regmap_update_bits(map, NAU8810_REG_POWER1,
   NAU8810_REFIMP_MASK, NAU8810_REFIMP_300K);
  break;

 case 131:
  regmap_write(map, NAU8810_REG_POWER1, 0);
  regmap_write(map, NAU8810_REG_POWER2, 0);
  regmap_write(map, NAU8810_REG_POWER3, 0);
  break;
 }

 return 0;
}
