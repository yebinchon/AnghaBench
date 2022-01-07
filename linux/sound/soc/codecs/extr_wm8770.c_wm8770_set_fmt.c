
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int WM8770_IFACECTRL ;
 int WM8770_MSTRCTRL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8770_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component;
 int iface, master;

 component = dai->component;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 136:
  master = 0x100;
  break;
 case 135:
  master = 0;
  break;
 default:
  return -EINVAL;
 }

 iface = 0;
 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  iface |= 0x2;
  break;
 case 128:
  break;
 case 131:
  iface |= 0x1;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 case 133:
  iface |= 0xc;
  break;
 case 132:
  iface |= 0x8;
  break;
 case 130:
  iface |= 0x4;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, WM8770_IFACECTRL, 0xf, iface);
 snd_soc_component_update_bits(component, WM8770_MSTRCTRL, 0x100, master);

 return 0;
}
