
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8904_priv {int sysclk_src; unsigned int mclk_rate; } ;
struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;


 int dev_dbg (int ,char*,int,unsigned int) ;
 struct wm8904_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8904_configure_clocking (struct snd_soc_component*) ;

__attribute__((used)) static int wm8904_set_sysclk(struct snd_soc_dai *dai, int clk_id,
        unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct wm8904_priv *priv = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 128:
  priv->sysclk_src = clk_id;
  priv->mclk_rate = freq;
  break;

 case 129:
  priv->sysclk_src = clk_id;
  break;

 default:
  return -EINVAL;
 }

 dev_dbg(dai->dev, "Clock source is %d at %uHz\n", clk_id, freq);

 wm8904_configure_clocking(component);

 return 0;
}
