
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm2_machine_priv {int sysclk_rate; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_soc_card {int dummy; } ;


 int ARIZONA_CLK_SRC_FLL1 ;
 int ARIZONA_CLK_SYSCLK ;
 int ARIZONA_FLL_SRC_MCLK1 ;
 int MCLK_RATE ;
 int SND_SOC_CLOCK_IN ;
 int WM5110_FLL1 ;
 int WM5110_FLL1_REFCLK ;
 int dev_err (int ,char*,int) ;
 struct tm2_machine_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_component_set_pll (struct snd_soc_component*,int ,int ,int ,int ) ;
 int snd_soc_component_set_sysclk (struct snd_soc_component*,int ,int ,int ,int ) ;

__attribute__((used)) static int tm2_start_sysclk(struct snd_soc_card *card)
{
 struct tm2_machine_priv *priv = snd_soc_card_get_drvdata(card);
 struct snd_soc_component *component = priv->component;
 int ret;

 ret = snd_soc_component_set_pll(component, WM5110_FLL1_REFCLK,
        ARIZONA_FLL_SRC_MCLK1,
        MCLK_RATE,
        priv->sysclk_rate);
 if (ret < 0) {
  dev_err(component->dev, "Failed to set FLL1 source: %d\n", ret);
  return ret;
 }

 ret = snd_soc_component_set_pll(component, WM5110_FLL1,
        ARIZONA_FLL_SRC_MCLK1,
        MCLK_RATE,
        priv->sysclk_rate);
 if (ret < 0) {
  dev_err(component->dev, "Failed to start FLL1: %d\n", ret);
  return ret;
 }

 ret = snd_soc_component_set_sysclk(component, ARIZONA_CLK_SYSCLK,
           ARIZONA_CLK_SRC_FLL1,
           priv->sysclk_rate,
           SND_SOC_CLOCK_IN);
 if (ret < 0) {
  dev_err(component->dev, "Failed to set SYSCLK source: %d\n", ret);
  return ret;
 }

 return 0;
}
