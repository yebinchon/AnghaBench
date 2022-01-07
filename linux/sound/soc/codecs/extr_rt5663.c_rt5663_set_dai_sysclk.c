
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct rt5663_priv {unsigned int sysclk; int sysclk_src; } ;


 int EINVAL ;
 int RT5663_GLB_CLK ;
 int RT5663_SCLK_SRC_MASK ;
 unsigned int RT5663_SCLK_SRC_MCLK ;
 unsigned int RT5663_SCLK_SRC_PLL1 ;
 unsigned int RT5663_SCLK_SRC_RCCLK ;



 int dev_dbg (int ,char*,unsigned int,int) ;
 int dev_err (int ,char*,int) ;
 struct rt5663_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int rt5663_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
 unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct rt5663_priv *rt5663 = snd_soc_component_get_drvdata(component);
 unsigned int reg_val = 0;

 if (freq == rt5663->sysclk && clk_id == rt5663->sysclk_src)
  return 0;

 switch (clk_id) {
 case 130:
  reg_val |= RT5663_SCLK_SRC_MCLK;
  break;
 case 129:
  reg_val |= RT5663_SCLK_SRC_PLL1;
  break;
 case 128:
  reg_val |= RT5663_SCLK_SRC_RCCLK;
  break;
 default:
  dev_err(component->dev, "Invalid clock id (%d)\n", clk_id);
  return -EINVAL;
 }
 snd_soc_component_update_bits(component, RT5663_GLB_CLK, RT5663_SCLK_SRC_MASK,
  reg_val);
 rt5663->sysclk = freq;
 rt5663->sysclk_src = clk_id;

 dev_dbg(component->dev, "Sysclk is %dHz and clock id is %d\n",
  freq, clk_id);

 return 0;
}
