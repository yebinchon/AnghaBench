
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



 int WM8962_AUDIO_INTERFACE_0 ;
 int WM8962_BCLK_INV ;
 int WM8962_FMT_MASK ;
 int WM8962_LRCLK_INV ;
 int WM8962_MSTR ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8962_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 int aif0 = 0;

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 135:
  aif0 |= WM8962_LRCLK_INV | 3;

 case 136:
  aif0 |= 3;

  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
  case 132:
   break;
  default:
   return -EINVAL;
  }
  break;

 case 128:
  break;
 case 131:
  aif0 |= 1;
  break;
 case 134:
  aif0 |= 2;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 case 132:
  aif0 |= WM8962_BCLK_INV;
  break;
 case 130:
  aif0 |= WM8962_LRCLK_INV;
  break;
 case 133:
  aif0 |= WM8962_BCLK_INV | WM8962_LRCLK_INV;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 138:
  aif0 |= WM8962_MSTR;
  break;
 case 137:
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, WM8962_AUDIO_INTERFACE_0,
       WM8962_FMT_MASK | WM8962_BCLK_INV | WM8962_MSTR |
       WM8962_LRCLK_INV, aif0);

 return 0;
}
