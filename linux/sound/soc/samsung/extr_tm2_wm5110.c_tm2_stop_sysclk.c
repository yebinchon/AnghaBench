
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm2_machine_priv {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_soc_card {int dummy; } ;


 int ARIZONA_CLK_SRC_FLL1 ;
 int ARIZONA_CLK_SYSCLK ;
 int WM5110_FLL1 ;
 int dev_err (int ,char*,int) ;
 struct tm2_machine_priv* snd_soc_card_get_drvdata (struct snd_soc_card*) ;
 int snd_soc_component_set_pll (struct snd_soc_component*,int ,int ,int ,int ) ;
 int snd_soc_component_set_sysclk (struct snd_soc_component*,int ,int ,int ,int ) ;

__attribute__((used)) static int tm2_stop_sysclk(struct snd_soc_card *card)
{
 struct tm2_machine_priv *priv = snd_soc_card_get_drvdata(card);
 struct snd_soc_component *component = priv->component;
 int ret;

 ret = snd_soc_component_set_pll(component, WM5110_FLL1, 0, 0, 0);
 if (ret < 0) {
  dev_err(component->dev, "Failed to stop FLL1: %d\n", ret);
  return ret;
 }

 ret = snd_soc_component_set_sysclk(component, ARIZONA_CLK_SYSCLK,
           ARIZONA_CLK_SRC_FLL1, 0, 0);
 if (ret < 0) {
  dev_err(component->dev, "Failed to stop SYSCLK: %d\n", ret);
  return ret;
 }

 return 0;
}
