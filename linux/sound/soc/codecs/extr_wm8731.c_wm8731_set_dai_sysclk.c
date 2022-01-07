
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8731_priv {int sysclk_type; unsigned int sysclk; int * constraints; int mclk; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;


 int clk_set_rate (int ,unsigned int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct wm8731_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;
 int wm8731_constraints_11289600_16934400 ;
 int wm8731_constraints_12000000 ;
 int wm8731_constraints_12288000_18432000 ;

__attribute__((used)) static int wm8731_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct wm8731_priv *wm8731 = snd_soc_component_get_drvdata(component);

 switch (clk_id) {
 case 128:
 case 129:
  if (wm8731->mclk && clk_set_rate(wm8731->mclk, freq))
   return -EINVAL;
  wm8731->sysclk_type = clk_id;
  break;
 default:
  return -EINVAL;
 }

 switch (freq) {
 case 0:
  wm8731->constraints = ((void*)0);
  break;
 case 12000000:
  wm8731->constraints = &wm8731_constraints_12000000;
  break;
 case 12288000:
 case 18432000:
  wm8731->constraints = &wm8731_constraints_12288000_18432000;
  break;
 case 16934400:
 case 11289600:
  wm8731->constraints = &wm8731_constraints_11289600_16934400;
  break;
 default:
  return -EINVAL;
 }

 wm8731->sysclk = freq;

 snd_soc_dapm_sync(dapm);

 return 0;
}
