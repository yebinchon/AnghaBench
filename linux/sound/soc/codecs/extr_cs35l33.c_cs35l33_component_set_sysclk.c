
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cs35l33_private {unsigned int mclk_int; int regmap; } ;


 int CS35L33_CLK_CTL ;
 int CS35L33_MCLKDIV2 ;






 int EINVAL ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct cs35l33_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs35l33_component_set_sysclk(struct snd_soc_component *component,
  int clk_id, int source, unsigned int freq, int dir)
{
 struct cs35l33_private *cs35l33 = snd_soc_component_get_drvdata(component);

 switch (freq) {
 case 130:
 case 129:
 case 128:
  regmap_update_bits(cs35l33->regmap, CS35L33_CLK_CTL,
   CS35L33_MCLKDIV2, 0);
  cs35l33->mclk_int = freq;
  break;
 case 133:
 case 132:
 case 131:
  regmap_update_bits(cs35l33->regmap, CS35L33_CLK_CTL,
   CS35L33_MCLKDIV2, CS35L33_MCLKDIV2);
  cs35l33->mclk_int = freq/2;
  break;
 default:
  cs35l33->mclk_int = 0;
  return -EINVAL;
 }

 dev_dbg(component->dev, "external mclk freq=%d, internal mclk freq=%d\n",
  freq, cs35l33->mclk_int);

 return 0;
}
