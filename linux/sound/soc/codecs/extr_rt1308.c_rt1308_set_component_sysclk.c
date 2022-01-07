
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt1308_priv {unsigned int sysclk; int sysclk_src; } ;


 int EINVAL ;
 int RT1308_CLK_1 ;
 int RT1308_CLK_DET ;




 unsigned int RT1308_MCLK_DET_EN ;
 int RT1308_MCLK_DET_EN_MASK ;
 int RT1308_SEL_FS_SYS_MASK ;
 unsigned int RT1308_SEL_FS_SYS_SRC_BCLK ;
 unsigned int RT1308_SEL_FS_SYS_SRC_MCLK ;
 unsigned int RT1308_SEL_FS_SYS_SRC_PLL ;
 unsigned int RT1308_SEL_FS_SYS_SRC_RCCLK ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int dev_err (int ,char*,int) ;
 struct rt1308_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int rt1308_set_component_sysclk(struct snd_soc_component *component,
  int clk_id, int source, unsigned int freq, int dir)
{
 struct rt1308_priv *rt1308 = snd_soc_component_get_drvdata(component);
 unsigned int reg_val = 0;

 if (freq == rt1308->sysclk && clk_id == rt1308->sysclk_src)
  return 0;

 switch (clk_id) {
 case 130:
  reg_val |= RT1308_SEL_FS_SYS_SRC_MCLK;
  snd_soc_component_update_bits(component,
   RT1308_CLK_DET, RT1308_MCLK_DET_EN_MASK,
   RT1308_MCLK_DET_EN);
  break;
 case 131:
  reg_val |= RT1308_SEL_FS_SYS_SRC_BCLK;
  break;
 case 129:
  reg_val |= RT1308_SEL_FS_SYS_SRC_PLL;
  break;
 case 128:
  reg_val |= RT1308_SEL_FS_SYS_SRC_RCCLK;
  break;
 default:
  dev_err(component->dev, "Invalid clock id (%d)\n", clk_id);
  return -EINVAL;
 }
 snd_soc_component_update_bits(component, RT1308_CLK_1,
  RT1308_SEL_FS_SYS_MASK, reg_val);
 rt1308->sysclk = freq;
 rt1308->sysclk_src = clk_id;

 dev_dbg(component->dev, "Sysclk is %dHz and clock id is %d\n",
  freq, clk_id);

 return 0;
}
