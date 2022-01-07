
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8770_priv {unsigned int sysclk; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 struct wm8770_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8770_set_sysclk(struct snd_soc_dai *dai,
        int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component;
 struct wm8770_priv *wm8770;

 component = dai->component;
 wm8770 = snd_soc_component_get_drvdata(component);
 wm8770->sysclk = freq;
 return 0;
}
