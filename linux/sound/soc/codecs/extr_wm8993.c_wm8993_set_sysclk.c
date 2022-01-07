
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8993_priv {unsigned int mclk_rate; int sysclk_source; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;


 struct wm8993_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8993_set_sysclk(struct snd_soc_dai *codec_dai,
        int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct wm8993_priv *wm8993 = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 128:
  wm8993->mclk_rate = freq;

 case 129:
  wm8993->sysclk_source = clk_id;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
