
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt5668_priv {unsigned int sysclk; int sysclk_src; scalar_t__* master; } ;


 int EINVAL ;
 size_t RT5668_AIF2 ;
 unsigned int RT5668_CLK_SRC_MCLK ;
 unsigned int RT5668_CLK_SRC_PLL1 ;
 unsigned int RT5668_CLK_SRC_PLL2 ;
 unsigned int RT5668_CLK_SRC_RCCLK ;
 int RT5668_GLB_CLK ;
 int RT5668_I2S2_SRC_MASK ;
 unsigned int RT5668_I2S2_SRC_SFT ;
 int RT5668_I2S_M_CLK_CTRL_1 ;
 int RT5668_SCLK_SRC_MASK ;
 unsigned int RT5668_SCLK_SRC_MCLK ;
 unsigned int RT5668_SCLK_SRC_PLL1 ;
 unsigned int RT5668_SCLK_SRC_PLL2 ;
 unsigned int RT5668_SCLK_SRC_RCCLK ;




 int dev_dbg (int ,char*,unsigned int,int) ;
 int dev_err (int ,char*,int) ;
 struct rt5668_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int rt5668_set_component_sysclk(struct snd_soc_component *component,
  int clk_id, int source, unsigned int freq, int dir)
{
 struct rt5668_priv *rt5668 = snd_soc_component_get_drvdata(component);
 unsigned int reg_val = 0, src = 0;

 if (freq == rt5668->sysclk && clk_id == rt5668->sysclk_src)
  return 0;

 switch (clk_id) {
 case 131:
  reg_val |= RT5668_SCLK_SRC_MCLK;
  src = RT5668_CLK_SRC_MCLK;
  break;
 case 130:
  reg_val |= RT5668_SCLK_SRC_PLL1;
  src = RT5668_CLK_SRC_PLL1;
  break;
 case 129:
  reg_val |= RT5668_SCLK_SRC_PLL2;
  src = RT5668_CLK_SRC_PLL2;
  break;
 case 128:
  reg_val |= RT5668_SCLK_SRC_RCCLK;
  src = RT5668_CLK_SRC_RCCLK;
  break;
 default:
  dev_err(component->dev, "Invalid clock id (%d)\n", clk_id);
  return -EINVAL;
 }
 snd_soc_component_update_bits(component, RT5668_GLB_CLK,
  RT5668_SCLK_SRC_MASK, reg_val);

 if (rt5668->master[RT5668_AIF2]) {
  snd_soc_component_update_bits(component,
   RT5668_I2S_M_CLK_CTRL_1, RT5668_I2S2_SRC_MASK,
   src << RT5668_I2S2_SRC_SFT);
 }

 rt5668->sysclk = freq;
 rt5668->sysclk_src = clk_id;

 dev_dbg(component->dev, "Sysclk is %dHz and clock id is %d\n",
  freq, clk_id);

 return 0;
}
