
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8960_priv {unsigned int freq_in; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8960_SYSCLK_AUTO ;
 struct wm8960_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8960_set_pll (struct snd_soc_component*,unsigned int,unsigned int) ;

__attribute__((used)) static int wm8960_set_dai_pll(struct snd_soc_dai *codec_dai, int pll_id,
  int source, unsigned int freq_in, unsigned int freq_out)
{
 struct snd_soc_component *component = codec_dai->component;
 struct wm8960_priv *wm8960 = snd_soc_component_get_drvdata(component);

 wm8960->freq_in = freq_in;

 if (pll_id == WM8960_SYSCLK_AUTO)
  return 0;

 return wm8960_set_pll(component, freq_in, freq_out);
}
