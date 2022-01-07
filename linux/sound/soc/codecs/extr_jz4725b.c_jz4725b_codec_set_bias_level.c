
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct regmap {int dummy; } ;
struct jz_icdc {struct regmap* regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int BIT (int ) ;
 int JZ4725B_CODEC_REG_PMR2 ;
 int REG_PMR2_SB_OFFSET ;
 int REG_PMR2_SB_SLEEP_OFFSET ;




 int msleep (int) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 struct jz_icdc* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int jz4725b_codec_set_bias_level(struct snd_soc_component *component,
     enum snd_soc_bias_level level)
{
 struct jz_icdc *icdc = snd_soc_component_get_drvdata(component);
 struct regmap *map = icdc->regmap;

 switch (level) {
 case 130:
  regmap_update_bits(map, JZ4725B_CODEC_REG_PMR2,
       BIT(REG_PMR2_SB_SLEEP_OFFSET), 0);
  break;
 case 129:

  regmap_update_bits(map, JZ4725B_CODEC_REG_PMR2,
       BIT(REG_PMR2_SB_OFFSET), 0);
  msleep(224);
  break;
 case 128:
  regmap_update_bits(map, JZ4725B_CODEC_REG_PMR2,
       BIT(REG_PMR2_SB_SLEEP_OFFSET),
       BIT(REG_PMR2_SB_SLEEP_OFFSET));
  break;
 case 131:
  regmap_update_bits(map, JZ4725B_CODEC_REG_PMR2,
       BIT(REG_PMR2_SB_OFFSET),
       BIT(REG_PMR2_SB_OFFSET));
  break;
 }

 return 0;
}
