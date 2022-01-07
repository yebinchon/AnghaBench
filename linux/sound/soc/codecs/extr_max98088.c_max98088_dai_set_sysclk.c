
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct max98088_priv {unsigned int sysclk; int mclk; } ;


 int EINVAL ;
 int IS_ERR (int ) ;
 int M98088_REG_10_SYS_CLK ;
 int M98088_REG_51_PWR_SYS ;
 int M98088_SHDNRUN ;
 unsigned int clk_round_rate (int ,unsigned int) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_dbg (int ,char*,int,unsigned int) ;
 int dev_err (int ,char*) ;
 struct max98088_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int max98088_dai_set_sysclk(struct snd_soc_dai *dai,
                                  int clk_id, unsigned int freq, int dir)
{
       struct snd_soc_component *component = dai->component;
       struct max98088_priv *max98088 = snd_soc_component_get_drvdata(component);


       if (freq == max98088->sysclk)
               return 0;

 if (!IS_ERR(max98088->mclk)) {
  freq = clk_round_rate(max98088->mclk, freq);
  clk_set_rate(max98088->mclk, freq);
 }





       if ((freq >= 10000000) && (freq < 20000000)) {
               snd_soc_component_write(component, M98088_REG_10_SYS_CLK, 0x10);
       } else if ((freq >= 20000000) && (freq < 30000000)) {
               snd_soc_component_write(component, M98088_REG_10_SYS_CLK, 0x20);
       } else {
               dev_err(component->dev, "Invalid master clock frequency\n");
               return -EINVAL;
       }

       if (snd_soc_component_read32(component, M98088_REG_51_PWR_SYS) & M98088_SHDNRUN) {
               snd_soc_component_update_bits(component, M98088_REG_51_PWR_SYS,
                       M98088_SHDNRUN, 0);
               snd_soc_component_update_bits(component, M98088_REG_51_PWR_SYS,
                       M98088_SHDNRUN, M98088_SHDNRUN);
       }

       dev_dbg(dai->dev, "Clock source is %d at %uHz\n", clk_id, freq);

       max98088->sysclk = freq;
       return 0;
}
