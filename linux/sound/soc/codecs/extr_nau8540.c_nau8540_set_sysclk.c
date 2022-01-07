
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct nau8540 {int dev; int regmap; } ;


 int EINVAL ;



 int NAU8540_CLK_SRC_MASK ;
 int NAU8540_CLK_SRC_MCLK ;
 int NAU8540_CLK_SRC_VCO ;
 int NAU8540_DCO_EN ;
 int NAU8540_REG_CLOCK_SRC ;
 int NAU8540_REG_FLL6 ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct nau8540* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int nau8540_set_sysclk(struct snd_soc_component *component,
 int clk_id, int source, unsigned int freq, int dir)
{
 struct nau8540 *nau8540 = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 130:
 case 128:
  regmap_update_bits(nau8540->regmap, NAU8540_REG_CLOCK_SRC,
   NAU8540_CLK_SRC_MASK, NAU8540_CLK_SRC_MCLK);
  regmap_update_bits(nau8540->regmap, NAU8540_REG_FLL6,
   NAU8540_DCO_EN, 0);
  break;

 case 129:
  regmap_update_bits(nau8540->regmap, NAU8540_REG_FLL6,
   NAU8540_DCO_EN, NAU8540_DCO_EN);
  regmap_update_bits(nau8540->regmap, NAU8540_REG_CLOCK_SRC,
   NAU8540_CLK_SRC_MASK, NAU8540_CLK_SRC_VCO);
  break;

 default:
  dev_err(nau8540->dev, "Invalid clock id (%d)\n", clk_id);
  return -EINVAL;
 }

 dev_dbg(nau8540->dev, "Sysclk is %dHz and clock id is %d\n",
  freq, clk_id);

 return 0;
}
