
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int id; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int WM8776_ADCIFCTRL ;
 int WM8776_DACIFCTRL ;


 int WM8776_MSTRCTRL ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,int,int) ;

__attribute__((used)) static int wm8776_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 int reg, iface, master;

 switch (dai->driver->id) {
 case 128:
  reg = WM8776_DACIFCTRL;
  master = 0x80;
  break;
 case 129:
  reg = WM8776_ADCIFCTRL;
  master = 0x100;
  break;
 default:
  return -EINVAL;
 }

 iface = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 138:
  break;
 case 137:
  master = 0;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 136:
  iface |= 0x0002;
  break;
 case 130:
  break;
 case 133:
  iface |= 0x0001;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 131:
  break;
 case 135:
  iface |= 0x00c;
  break;
 case 134:
  iface |= 0x008;
  break;
 case 132:
  iface |= 0x004;
  break;
 default:
  return -EINVAL;
 }


 snd_soc_component_update_bits(component, reg, 0xf, iface);
 snd_soc_component_update_bits(component, WM8776_MSTRCTRL, 0x180, master);

 return 0;
}
