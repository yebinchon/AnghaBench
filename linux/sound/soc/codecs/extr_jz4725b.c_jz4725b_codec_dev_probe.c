
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct regmap {int dummy; } ;
struct jz_icdc {int clk; struct regmap* regmap; } ;


 int JZ4725B_CODEC_REG_AICR ;
 int JZ4725B_CODEC_REG_CCR1 ;
 int REG_AICR_CONFIG1_OFFSET ;
 int REG_CCR1_CONFIG4_OFFSET ;
 int clk_prepare_enable (int ) ;
 int regmap_write (struct regmap*,int ,int) ;
 struct jz_icdc* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int jz4725b_codec_dev_probe(struct snd_soc_component *component)
{
 struct jz_icdc *icdc = snd_soc_component_get_drvdata(component);
 struct regmap *map = icdc->regmap;

 clk_prepare_enable(icdc->clk);




 regmap_write(map, JZ4725B_CODEC_REG_AICR,
       0xf << REG_AICR_CONFIG1_OFFSET);
 regmap_write(map, JZ4725B_CODEC_REG_CCR1,
       0x0 << REG_CCR1_CONFIG4_OFFSET);

 return 0;
}
