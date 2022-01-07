
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int WM8753_CLOCK ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 scalar_t__ wm8753_hdac_set_dai_fmt (struct snd_soc_component*,unsigned int) ;
 int wm8753_vdac_adc_set_dai_fmt (struct snd_soc_component*,unsigned int) ;

__attribute__((used)) static int wm8753_mode3_4_set_dai_fmt(struct snd_soc_component *component,
  unsigned int fmt)
{
 u16 clock;


 clock = snd_soc_component_read32(component, WM8753_CLOCK) & 0xfffb;
 snd_soc_component_write(component, WM8753_CLOCK, clock | 0x4);

 if (wm8753_hdac_set_dai_fmt(component, fmt) < 0)
  return -EINVAL;
 return wm8753_vdac_adc_set_dai_fmt(component, fmt);
}
