
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt1305_priv {unsigned int sysclk; int sysclk_src; } ;


 int EINVAL ;
 int RT1305_CLK_1 ;
 int RT1305_CLOCK_DETECT ;



 int RT1305_SEL_CLK_DET_SRC_MASK ;
 unsigned int RT1305_SEL_CLK_DET_SRC_MCLK ;
 int RT1305_SEL_FS_SYS_PRE_MASK ;
 unsigned int RT1305_SEL_FS_SYS_PRE_MCLK ;
 unsigned int RT1305_SEL_FS_SYS_PRE_PLL ;
 unsigned int RT1305_SEL_FS_SYS_PRE_RCCLK ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int dev_err (int ,char*,int) ;
 struct rt1305_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int rt1305_set_component_sysclk(struct snd_soc_component *component,
  int clk_id, int source, unsigned int freq, int dir)
{
 struct rt1305_priv *rt1305 = snd_soc_component_get_drvdata(component);
 unsigned int reg_val = 0;

 if (freq == rt1305->sysclk && clk_id == rt1305->sysclk_src)
  return 0;

 switch (clk_id) {
 case 130:
  reg_val |= RT1305_SEL_FS_SYS_PRE_MCLK;
  snd_soc_component_update_bits(component,
   RT1305_CLOCK_DETECT, RT1305_SEL_CLK_DET_SRC_MASK,
   RT1305_SEL_CLK_DET_SRC_MCLK);
  break;
 case 129:
  reg_val |= RT1305_SEL_FS_SYS_PRE_PLL;
  break;
 case 128:
  reg_val |= RT1305_SEL_FS_SYS_PRE_RCCLK;
  break;
 default:
  dev_err(component->dev, "Invalid clock id (%d)\n", clk_id);
  return -EINVAL;
 }
 snd_soc_component_update_bits(component, RT1305_CLK_1,
  RT1305_SEL_FS_SYS_PRE_MASK, reg_val);
 rt1305->sysclk = freq;
 rt1305->sysclk_src = clk_id;

 dev_dbg(component->dev, "Sysclk is %dHz and clock id is %d\n",
  freq, clk_id);

 return 0;
}
