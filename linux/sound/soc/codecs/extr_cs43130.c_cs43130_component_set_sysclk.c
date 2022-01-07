
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cs43130_private {unsigned int mclk; int pll_bypass; } ;




 int CS43130_MCLK_SRC_EXT ;
 int EINVAL ;
 int dev_dbg (int ,char*,int,int,unsigned int,int) ;
 int dev_err (int ,char*,...) ;
 struct cs43130_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs43130_component_set_sysclk(struct snd_soc_component *component,
        int clk_id, int source, unsigned int freq,
        int dir)
{
 struct cs43130_private *cs43130 = snd_soc_component_get_drvdata(component);

 dev_dbg(component->dev, "clk_id = %d, source = %d, freq = %d, dir = %d\n",
  clk_id, source, freq, dir);

 switch (freq) {
 case 129:
 case 128:
  cs43130->mclk = freq;
  break;
 default:
  dev_err(component->dev, "Invalid MCLK INT freq: %u\n", freq);
  return -EINVAL;
 }

 if (source == CS43130_MCLK_SRC_EXT) {
  cs43130->pll_bypass = 1;
 } else {
  dev_err(component->dev, "Invalid MCLK source\n");
  return -EINVAL;
 }

 return 0;
}
