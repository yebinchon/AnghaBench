
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8993_priv {int master; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;






 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 unsigned int WM8993_AIF_BCLK_INV ;
 unsigned int WM8993_AIF_FMT_MASK ;
 unsigned int WM8993_AIF_LRCLK_INV ;
 int WM8993_AUDIO_INTERFACE_1 ;
 int WM8993_AUDIO_INTERFACE_4 ;
 unsigned int WM8993_BCLK_DIR ;
 unsigned int WM8993_LRCLK_DIR ;
 struct wm8993_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;

__attribute__((used)) static int wm8993_set_dai_fmt(struct snd_soc_dai *dai,
         unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 struct wm8993_priv *wm8993 = snd_soc_component_get_drvdata(component);
 unsigned int aif1 = snd_soc_component_read32(component, WM8993_AUDIO_INTERFACE_1);
 unsigned int aif4 = snd_soc_component_read32(component, WM8993_AUDIO_INTERFACE_4);

 aif1 &= ~(WM8993_BCLK_DIR | WM8993_AIF_BCLK_INV |
    WM8993_AIF_LRCLK_INV | WM8993_AIF_FMT_MASK);
 aif4 &= ~WM8993_LRCLK_DIR;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
  wm8993->master = 0;
  break;
 case 138:
  aif4 |= WM8993_LRCLK_DIR;
  wm8993->master = 1;
  break;
 case 139:
  aif1 |= WM8993_BCLK_DIR;
  wm8993->master = 1;
  break;
 case 140:
  aif1 |= WM8993_BCLK_DIR;
  aif4 |= WM8993_LRCLK_DIR;
  wm8993->master = 1;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 135:
  aif1 |= WM8993_AIF_LRCLK_INV;

 case 136:
  aif1 |= 0x18;
  break;
 case 134:
  aif1 |= 0x10;
  break;
 case 128:
  break;
 case 131:
  aif1 |= 0x8;
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
   aif1 |= WM8993_AIF_BCLK_INV;
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
   aif1 |= WM8993_AIF_BCLK_INV | WM8993_AIF_LRCLK_INV;
   break;
  case 132:
   aif1 |= WM8993_AIF_BCLK_INV;
   break;
  case 130:
   aif1 |= WM8993_AIF_LRCLK_INV;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, WM8993_AUDIO_INTERFACE_1, aif1);
 snd_soc_component_write(component, WM8993_AUDIO_INTERFACE_4, aif4);

 return 0;
}
