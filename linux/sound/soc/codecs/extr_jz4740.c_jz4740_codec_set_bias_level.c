
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct regmap {int dummy; } ;
struct jz4740_codec {struct regmap* regmap; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 unsigned int JZ4740_CODEC_1_HEADPHONE_POWERDOWN_M ;
 unsigned int JZ4740_CODEC_1_SUSPEND ;
 unsigned int JZ4740_CODEC_1_VREF_AMP_DISABLE ;
 unsigned int JZ4740_CODEC_1_VREF_DISABLE ;
 int JZ4740_REG_CODEC_1 ;




 int jz4740_codec_wakeup (struct regmap*) ;
 int regcache_mark_dirty (struct regmap*) ;
 int regmap_update_bits (struct regmap*,int ,unsigned int,unsigned int) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;
 struct jz4740_codec* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int jz4740_codec_set_bias_level(struct snd_soc_component *component,
 enum snd_soc_bias_level level)
{
 struct jz4740_codec *jz4740_codec = snd_soc_component_get_drvdata(component);
 struct regmap *regmap = jz4740_codec->regmap;
 unsigned int mask;
 unsigned int value;

 switch (level) {
 case 130:
  break;
 case 129:
  mask = JZ4740_CODEC_1_VREF_DISABLE |
    JZ4740_CODEC_1_VREF_AMP_DISABLE |
    JZ4740_CODEC_1_HEADPHONE_POWERDOWN_M;
  value = 0;

  regmap_update_bits(regmap, JZ4740_REG_CODEC_1, mask, value);
  break;
 case 128:

  if (snd_soc_component_get_bias_level(component) == 131)
   jz4740_codec_wakeup(regmap);

  mask = JZ4740_CODEC_1_VREF_DISABLE |
   JZ4740_CODEC_1_VREF_AMP_DISABLE |
   JZ4740_CODEC_1_HEADPHONE_POWERDOWN_M;
  value = JZ4740_CODEC_1_VREF_DISABLE |
   JZ4740_CODEC_1_VREF_AMP_DISABLE |
   JZ4740_CODEC_1_HEADPHONE_POWERDOWN_M;

  regmap_update_bits(regmap, JZ4740_REG_CODEC_1, mask, value);
  break;
 case 131:
  mask = JZ4740_CODEC_1_SUSPEND;
  value = JZ4740_CODEC_1_SUSPEND;

  regmap_update_bits(regmap, JZ4740_REG_CODEC_1, mask, value);
  regcache_mark_dirty(regmap);
  break;
 default:
  break;
 }

 return 0;
}
