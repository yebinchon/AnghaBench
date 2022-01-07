
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct max98090_priv {unsigned int sysclk; unsigned int pclk; int mclk; } ;


 int EINVAL ;
 int IS_ERR (int ) ;
 int M98090_PSCLK_DIV1 ;
 int M98090_PSCLK_DIV2 ;
 int M98090_PSCLK_DIV4 ;
 int M98090_REG_SYSTEM_CLOCK ;
 unsigned int clk_round_rate (int ,unsigned int) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_err (int ,char*) ;
 struct max98090_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int max98090_dai_set_sysclk(struct snd_soc_dai *dai,
       int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct max98090_priv *max98090 = snd_soc_component_get_drvdata(component);


 if (freq == max98090->sysclk)
  return 0;

 if (!IS_ERR(max98090->mclk)) {
  freq = clk_round_rate(max98090->mclk, freq);
  clk_set_rate(max98090->mclk, freq);
 }






 if ((freq >= 10000000) && (freq <= 20000000)) {
  snd_soc_component_write(component, M98090_REG_SYSTEM_CLOCK,
   M98090_PSCLK_DIV1);
  max98090->pclk = freq;
 } else if ((freq > 20000000) && (freq <= 40000000)) {
  snd_soc_component_write(component, M98090_REG_SYSTEM_CLOCK,
   M98090_PSCLK_DIV2);
  max98090->pclk = freq >> 1;
 } else if ((freq > 40000000) && (freq <= 60000000)) {
  snd_soc_component_write(component, M98090_REG_SYSTEM_CLOCK,
   M98090_PSCLK_DIV4);
  max98090->pclk = freq >> 2;
 } else {
  dev_err(component->dev, "Invalid master clock frequency\n");
  return -EINVAL;
 }

 max98090->sysclk = freq;

 return 0;
}
