
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040_data {int sysclk; int clk_in; int pll; } ;
struct twl6040 {int dummy; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 int dev_err (int ,char*,...) ;
 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct twl6040* to_twl6040 (struct snd_soc_component*) ;
 int twl6040_set_pll (struct twl6040*,int ,int ,int ) ;

__attribute__((used)) static int twl6040_prepare(struct snd_pcm_substream *substream,
   struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct twl6040 *twl6040 = to_twl6040(component);
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);
 int ret;

 if (!priv->sysclk) {
  dev_err(component->dev,
   "no mclk configured, call set_sysclk() on init\n");
  return -EINVAL;
 }

 ret = twl6040_set_pll(twl6040, priv->pll, priv->clk_in, priv->sysclk);
 if (ret) {
  dev_err(component->dev, "Can not set PLL (%d)\n", ret);
  return -EPERM;
 }

 return 0;
}
