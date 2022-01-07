
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



 int WM8737_AUDIO_FORMAT ;
 int WM8737_FORMAT_MASK ;
 int WM8737_LRP ;
 int WM8737_MS ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int wm8737_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 u16 af = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 136:
  af |= WM8737_MS;
  break;
 case 135:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 132:
  af |= 0x2;
  break;
 case 128:
  break;
 case 131:
  af |= 0x1;
  break;
 case 134:
  af |= 0x3;
  break;
 case 133:
  af |= 0x13;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 case 130:
  af |= WM8737_LRP;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, WM8737_AUDIO_FORMAT,
       WM8737_FORMAT_MASK | WM8737_LRP | WM8737_MS, af);

 return 0;
}
