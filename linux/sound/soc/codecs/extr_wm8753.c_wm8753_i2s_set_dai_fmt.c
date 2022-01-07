
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;





 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int WM8753_HIFI ;
 int WM8753_IOCTL ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8753_i2s_set_dai_fmt(struct snd_soc_component *component,
  unsigned int fmt)
{
 u16 ioctl, hifi;

 hifi = snd_soc_component_read32(component, WM8753_HIFI) & 0x013f;
 ioctl = snd_soc_component_read32(component, WM8753_IOCTL) & 0x00ae;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
  break;
 case 139:
  ioctl |= 0x1;
 case 138:
  hifi |= 0x0040;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 136:
 case 135:

  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
   break;
  case 132:
   hifi |= 0x0080;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 134:
 case 128:
 case 131:
  hifi &= ~0x0010;
  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
   break;
  case 133:
   hifi |= 0x0090;
   break;
  case 132:
   hifi |= 0x0080;
   break;
  case 130:
   hifi |= 0x0010;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, WM8753_HIFI, hifi);
 snd_soc_component_write(component, WM8753_IOCTL, ioctl);
 return 0;
}
