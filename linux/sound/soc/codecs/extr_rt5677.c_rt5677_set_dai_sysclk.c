
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct rt5677_priv {unsigned int sysclk; int sysclk_src; int regmap; } ;


 int EINVAL ;
 int RT5677_GLB_CLK1 ;
 int RT5677_SCLK_SRC_MASK ;
 unsigned int RT5677_SCLK_SRC_MCLK ;
 unsigned int RT5677_SCLK_SRC_PLL1 ;
 unsigned int RT5677_SCLK_SRC_RCCLK ;



 int dev_dbg (int ,char*,unsigned int,int) ;
 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5677_set_dai_sysclk(struct snd_soc_dai *dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);
 unsigned int reg_val = 0;

 if (freq == rt5677->sysclk && clk_id == rt5677->sysclk_src)
  return 0;

 switch (clk_id) {
 case 130:
  reg_val |= RT5677_SCLK_SRC_MCLK;
  break;
 case 129:
  reg_val |= RT5677_SCLK_SRC_PLL1;
  break;
 case 128:
  reg_val |= RT5677_SCLK_SRC_RCCLK;
  break;
 default:
  dev_err(component->dev, "Invalid clock id (%d)\n", clk_id);
  return -EINVAL;
 }
 regmap_update_bits(rt5677->regmap, RT5677_GLB_CLK1,
  RT5677_SCLK_SRC_MASK, reg_val);
 rt5677->sysclk = freq;
 rt5677->sysclk_src = clk_id;

 dev_dbg(dai->dev, "Sysclk is %dHz and clock id is %d\n", freq, clk_id);

 return 0;
}
