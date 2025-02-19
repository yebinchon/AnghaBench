
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8741_priv {unsigned int sysclk; int * sysclk_constraints; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int constraints_11289 ;
 int constraints_12288 ;
 int constraints_16384 ;
 int constraints_16934 ;
 int constraints_18432 ;
 int constraints_22579 ;
 int constraints_24576 ;
 int constraints_36864 ;
 int dev_dbg (int ,char*,unsigned int) ;
 struct wm8741_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int wm8741_set_dai_sysclk(struct snd_soc_dai *codec_dai,
  int clk_id, unsigned int freq, int dir)
{
 struct snd_soc_component *component = codec_dai->component;
 struct wm8741_priv *wm8741 = snd_soc_component_get_drvdata(component);

 dev_dbg(component->dev, "wm8741_set_dai_sysclk info: freq=%dHz\n", freq);

 switch (freq) {
 case 0:
  wm8741->sysclk_constraints = ((void*)0);
  break;
 case 11289600:
  wm8741->sysclk_constraints = &constraints_11289;
  break;
 case 12288000:
  wm8741->sysclk_constraints = &constraints_12288;
  break;
 case 16384000:
  wm8741->sysclk_constraints = &constraints_16384;
  break;
 case 16934400:
  wm8741->sysclk_constraints = &constraints_16934;
  break;
 case 18432000:
  wm8741->sysclk_constraints = &constraints_18432;
  break;
 case 22579200:
 case 33868800:
  wm8741->sysclk_constraints = &constraints_22579;
  break;
 case 24576000:
  wm8741->sysclk_constraints = &constraints_24576;
  break;
 case 36864000:
  wm8741->sysclk_constraints = &constraints_36864;
  break;
 default:
  return -EINVAL;
 }

 wm8741->sysclk = freq;
 return 0;
}
