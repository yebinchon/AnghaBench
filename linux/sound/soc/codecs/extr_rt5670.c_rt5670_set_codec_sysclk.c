
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt5670_priv {unsigned int sysclk; int sysclk_src; } ;


 int EINVAL ;
 int RT5670_GLB_CLK ;
 int RT5670_SCLK_SRC_MASK ;
 unsigned int RT5670_SCLK_SRC_MCLK ;
 unsigned int RT5670_SCLK_SRC_PLL1 ;
 unsigned int RT5670_SCLK_SRC_RCCLK ;



 int dev_dbg (int ,char*,unsigned int,int) ;
 int dev_err (int ,char*,int) ;
 struct rt5670_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int rt5670_set_codec_sysclk(struct snd_soc_component *component, int clk_id,
       int source, unsigned int freq, int dir)
{
 struct rt5670_priv *rt5670 = snd_soc_component_get_drvdata(component);
 unsigned int reg_val = 0;

 switch (clk_id) {
 case 130:
  reg_val |= RT5670_SCLK_SRC_MCLK;
  break;
 case 129:
  reg_val |= RT5670_SCLK_SRC_PLL1;
  break;
 case 128:
  reg_val |= RT5670_SCLK_SRC_RCCLK;
  break;
 default:
  dev_err(component->dev, "Invalid clock id (%d)\n", clk_id);
  return -EINVAL;
 }
 snd_soc_component_update_bits(component, RT5670_GLB_CLK,
  RT5670_SCLK_SRC_MASK, reg_val);
 rt5670->sysclk = freq;
 if (clk_id != 128)
  rt5670->sysclk_src = clk_id;

 dev_dbg(component->dev, "Sysclk : %dHz clock id : %d\n", freq, clk_id);

 return 0;
}
