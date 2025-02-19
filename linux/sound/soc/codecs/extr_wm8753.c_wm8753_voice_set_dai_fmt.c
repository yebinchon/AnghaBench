
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8753_priv {unsigned int voice_fmt; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 struct wm8753_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int wm8753_voice_write_dai_fmt (struct snd_soc_component*,unsigned int) ;

__attribute__((used)) static int wm8753_voice_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 struct wm8753_priv *wm8753 = snd_soc_component_get_drvdata(component);

 wm8753->voice_fmt = fmt;

 return wm8753_voice_write_dai_fmt(component, fmt);
}
