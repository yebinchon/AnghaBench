
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;

 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int WM8728_IFCTL ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8728_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 u16 iface = snd_soc_component_read32(component, WM8728_IFCTL);




 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 132:
  iface |= 1;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  iface &= ~0x22;
  break;
 case 130:
  iface |= 0x20;
  iface &= ~0x02;
  break;
 case 129:
  iface |= 0x02;
  iface &= ~0x20;
  break;
 case 131:
  iface |= 0x22;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, WM8728_IFCTL, iface);
 return 0;
}
