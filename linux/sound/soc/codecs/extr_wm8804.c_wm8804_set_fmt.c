
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int WM8804_AIFRX ;
 int WM8804_AIFTX ;
 int dev_err (int ,char*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8804_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component;
 u16 format, master, bcp, lrp;

 component = dai->component;

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  format = 0x2;
  break;
 case 128:
  format = 0x0;
  break;
 case 131:
  format = 0x1;
  break;
 case 136:
 case 135:
  format = 0x3;
  break;
 default:
  dev_err(dai->dev, "Unknown dai format\n");
  return -EINVAL;
 }


 snd_soc_component_update_bits(component, WM8804_AIFTX, 0x3, format);
 snd_soc_component_update_bits(component, WM8804_AIFRX, 0x3, format);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 138:
  master = 1;
  break;
 case 137:
  master = 0;
  break;
 default:
  dev_err(dai->dev, "Unknown master/slave configuration\n");
  return -EINVAL;
 }


 snd_soc_component_update_bits(component, WM8804_AIFRX, 0x40, master << 6);

 bcp = lrp = 0;
 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 case 133:
  bcp = lrp = 1;
  break;
 case 132:
  bcp = 1;
  break;
 case 130:
  lrp = 1;
  break;
 default:
  dev_err(dai->dev, "Unknown polarity configuration\n");
  return -EINVAL;
 }


 snd_soc_component_update_bits(component, WM8804_AIFTX, 0x10 | 0x20,
       (bcp << 4) | (lrp << 5));
 snd_soc_component_update_bits(component, WM8804_AIFRX, 0x10 | 0x20,
       (bcp << 4) | (lrp << 5));
 return 0;
}
