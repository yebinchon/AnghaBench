
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 int WM8753_HIFI ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8753_hdac_set_dai_fmt(struct snd_soc_component *component,
  unsigned int fmt)
{
 u16 hifi = snd_soc_component_read32(component, WM8753_HIFI) & 0x01e0;


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  hifi |= 0x0002;
  break;
 case 128:
  break;
 case 129:
  hifi |= 0x0001;
  break;
 case 132:
  hifi |= 0x0003;
  break;
 case 131:
  hifi |= 0x0013;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, WM8753_HIFI, hifi);
 return 0;
}
