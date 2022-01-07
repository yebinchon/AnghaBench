
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int wm8753_hdac_set_dai_fmt (struct snd_soc_component*,unsigned int) ;

__attribute__((used)) static int wm8753_mode1h_set_dai_fmt(struct snd_soc_component *component,
  unsigned int fmt)
{
 return wm8753_hdac_set_dai_fmt(component, fmt);
}
