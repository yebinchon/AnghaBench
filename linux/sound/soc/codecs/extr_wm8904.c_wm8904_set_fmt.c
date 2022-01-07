
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



 unsigned int WM8904_AIF_BCLK_INV ;
 unsigned int WM8904_AIF_FMT_MASK ;
 int WM8904_AIF_LRCLK_INV ;
 int WM8904_AUDIO_INTERFACE_1 ;
 int WM8904_AUDIO_INTERFACE_3 ;
 unsigned int WM8904_BCLK_DIR ;
 unsigned int WM8904_LRCLK_DIR ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int wm8904_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 unsigned int aif1 = 0;
 unsigned int aif3 = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
  break;
 case 138:
  aif3 |= WM8904_LRCLK_DIR;
  break;
 case 139:
  aif1 |= WM8904_BCLK_DIR;
  break;
 case 140:
  aif1 |= WM8904_BCLK_DIR;
  aif3 |= WM8904_LRCLK_DIR;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 135:
  aif1 |= 0x3 | WM8904_AIF_LRCLK_INV;

 case 136:
  aif1 |= 0x3;
  break;
 case 134:
  aif1 |= 0x2;
  break;
 case 128:
  break;
 case 131:
  aif1 |= 0x1;
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
   aif1 |= WM8904_AIF_BCLK_INV;
   break;
  default:
   return -EINVAL;
  }
  break;

 case 134:
 case 128:
 case 131:
  switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
  case 129:
   break;
  case 133:
   aif1 |= WM8904_AIF_BCLK_INV | WM8904_AIF_LRCLK_INV;
   break;
  case 132:
   aif1 |= WM8904_AIF_BCLK_INV;
   break;
  case 130:
   aif1 |= WM8904_AIF_LRCLK_INV;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, WM8904_AUDIO_INTERFACE_1,
       WM8904_AIF_BCLK_INV | WM8904_AIF_LRCLK_INV |
       WM8904_AIF_FMT_MASK | WM8904_BCLK_DIR, aif1);
 snd_soc_component_update_bits(component, WM8904_AUDIO_INTERFACE_3,
       WM8904_LRCLK_DIR, aif3);

 return 0;
}
