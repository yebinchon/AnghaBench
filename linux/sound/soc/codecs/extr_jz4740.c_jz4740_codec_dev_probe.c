
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct jz4740_codec {int regmap; } ;


 int JZ4740_CODEC_1_SW2_ENABLE ;
 int JZ4740_REG_CODEC_1 ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct jz4740_codec* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int jz4740_codec_dev_probe(struct snd_soc_component *component)
{
 struct jz4740_codec *jz4740_codec = snd_soc_component_get_drvdata(component);

 regmap_update_bits(jz4740_codec->regmap, JZ4740_REG_CODEC_1,
   JZ4740_CODEC_1_SW2_ENABLE, JZ4740_CODEC_1_SW2_ENABLE);

 return 0;
}
