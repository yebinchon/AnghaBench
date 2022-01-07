
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct cs35l34_private {unsigned int mclk_int; int regmap; } ;
 int CS35L34_MCLK_CTL ;
 unsigned int CS35L34_MCLK_DIV ;
 unsigned int CS35L34_MCLK_RATE_5P6448 ;
 unsigned int CS35L34_MCLK_RATE_6P0000 ;
 unsigned int CS35L34_MCLK_RATE_6P1440 ;
 unsigned int CS35L34_MCLK_RATE_MASK ;
 int EINVAL ;
 int dev_err (int ,char*,unsigned int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct cs35l34_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs35l34_dai_set_sysclk(struct snd_soc_dai *dai,
    int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct cs35l34_private *cs35l34 = snd_soc_component_get_drvdata(component);
 unsigned int value;

 switch (freq) {
 case 130:
  value = CS35L34_MCLK_RATE_5P6448;
  cs35l34->mclk_int = freq;
 break;
 case 129:
  value = CS35L34_MCLK_RATE_6P0000;
  cs35l34->mclk_int = freq;
 break;
 case 128:
  value = CS35L34_MCLK_RATE_6P1440;
  cs35l34->mclk_int = freq;
 break;
 case 133:
  value = CS35L34_MCLK_DIV | CS35L34_MCLK_RATE_5P6448;
  cs35l34->mclk_int = freq / 2;
 break;
 case 132:
  value = CS35L34_MCLK_DIV | CS35L34_MCLK_RATE_6P0000;
  cs35l34->mclk_int = freq / 2;
 break;
 case 131:
  value = CS35L34_MCLK_DIV | CS35L34_MCLK_RATE_6P1440;
  cs35l34->mclk_int = freq / 2;
 break;
 default:
  dev_err(component->dev, "ERROR: Invalid Frequency %d\n", freq);
  cs35l34->mclk_int = 0;
  return -EINVAL;
 }
 regmap_update_bits(cs35l34->regmap, CS35L34_MCLK_CTL,
   CS35L34_MCLK_DIV | CS35L34_MCLK_RATE_MASK, value);
 return 0;
}
