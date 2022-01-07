
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm9081_priv {int sysclk_source; unsigned int mclk_rate; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;


 struct wm9081_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm9081_set_sysclk(struct snd_soc_component *component, int clk_id,
        int source, unsigned int freq, int dir)
{
 struct wm9081_priv *wm9081 = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 128:
 case 129:
  wm9081->sysclk_source = clk_id;
  wm9081->mclk_rate = freq;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
