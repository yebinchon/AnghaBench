
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int WM8400_AIF_FMT_DSP ;
 int WM8400_AIF_FMT_I2S ;
 int WM8400_AIF_FMT_LEFTJ ;
 int WM8400_AIF_FMT_MASK ;
 int WM8400_AIF_FMT_RIGHTJ ;
 int WM8400_AIF_LRCLK_INV ;
 int WM8400_AIF_MSTR1 ;
 int WM8400_AUDIO_INTERFACE_1 ;
 int WM8400_AUDIO_INTERFACE_3 ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8400_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 u16 audio1, audio3;

 audio1 = snd_soc_component_read32(component, WM8400_AUDIO_INTERFACE_1);
 audio3 = snd_soc_component_read32(component, WM8400_AUDIO_INTERFACE_3);


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133:
  audio3 &= ~WM8400_AIF_MSTR1;
  break;
 case 134:
  audio3 |= WM8400_AIF_MSTR1;
  break;
 default:
  return -EINVAL;
 }

 audio1 &= ~WM8400_AIF_FMT_MASK;


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  audio1 |= WM8400_AIF_FMT_I2S;
  audio1 &= ~WM8400_AIF_LRCLK_INV;
  break;
 case 128:
  audio1 |= WM8400_AIF_FMT_RIGHTJ;
  audio1 &= ~WM8400_AIF_LRCLK_INV;
  break;
 case 129:
  audio1 |= WM8400_AIF_FMT_LEFTJ;
  audio1 &= ~WM8400_AIF_LRCLK_INV;
  break;
 case 132:
  audio1 |= WM8400_AIF_FMT_DSP;
  audio1 &= ~WM8400_AIF_LRCLK_INV;
  break;
 case 131:
  audio1 |= WM8400_AIF_FMT_DSP | WM8400_AIF_LRCLK_INV;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, WM8400_AUDIO_INTERFACE_1, audio1);
 snd_soc_component_write(component, WM8400_AUDIO_INTERFACE_3, audio3);
 return 0;
}
