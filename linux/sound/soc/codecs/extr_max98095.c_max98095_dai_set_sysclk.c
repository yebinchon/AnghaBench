
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct max98095_priv {unsigned int sysclk; int mclk; } ;


 int EINVAL ;
 int IS_ERR (int ) ;
 int M98095_026_SYS_CLK ;
 unsigned int clk_round_rate (int ,unsigned int) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_dbg (int ,char*,int,unsigned int) ;
 int dev_err (int ,char*) ;
 struct max98095_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int max98095_dai_set_sysclk(struct snd_soc_dai *dai,
       int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct max98095_priv *max98095 = snd_soc_component_get_drvdata(component);


 if (freq == max98095->sysclk)
  return 0;

 if (!IS_ERR(max98095->mclk)) {
  freq = clk_round_rate(max98095->mclk, freq);
  clk_set_rate(max98095->mclk, freq);
 }






 if ((freq >= 10000000) && (freq < 20000000)) {
  snd_soc_component_write(component, M98095_026_SYS_CLK, 0x10);
 } else if ((freq >= 20000000) && (freq < 40000000)) {
  snd_soc_component_write(component, M98095_026_SYS_CLK, 0x20);
 } else if ((freq >= 40000000) && (freq < 60000000)) {
  snd_soc_component_write(component, M98095_026_SYS_CLK, 0x30);
 } else {
  dev_err(component->dev, "Invalid master clock frequency\n");
  return -EINVAL;
 }

 dev_dbg(dai->dev, "Clock source is %d at %uHz\n", clk_id, freq);

 max98095->sysclk = freq;
 return 0;
}
