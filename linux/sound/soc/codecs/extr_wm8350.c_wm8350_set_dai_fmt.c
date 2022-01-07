
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



 int WM8350_ADCLRC_ENA ;
 int WM8350_ADC_LR_RATE ;
 int WM8350_AIF_BCLK_INV ;
 int WM8350_AIF_FMT_MASK ;
 int WM8350_AIF_LRCLK_INV ;
 int WM8350_AI_DAC_CONTROL ;
 int WM8350_AI_FORMATING ;
 int WM8350_BCLK_MSTR ;
 int WM8350_DACLRC_ENA ;
 int WM8350_DAC_LR_RATE ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8350_set_dai_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 u16 iface = snd_soc_component_read32(component, WM8350_AI_FORMATING) &
     ~(WM8350_AIF_BCLK_INV | WM8350_AIF_LRCLK_INV | WM8350_AIF_FMT_MASK);
 u16 master = snd_soc_component_read32(component, WM8350_AI_DAC_CONTROL) &
     ~WM8350_BCLK_MSTR;
 u16 dac_lrc = snd_soc_component_read32(component, WM8350_DAC_LR_RATE) &
     ~WM8350_DACLRC_ENA;
 u16 adc_lrc = snd_soc_component_read32(component, WM8350_ADC_LR_RATE) &
     ~WM8350_ADCLRC_ENA;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 138:
  master |= WM8350_BCLK_MSTR;
  dac_lrc |= WM8350_DACLRC_ENA;
  adc_lrc |= WM8350_ADCLRC_ENA;
  break;
 case 137:
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  iface |= 0x2 << 8;
  break;
 case 128:
  break;
 case 131:
  iface |= 0x1 << 8;
  break;
 case 136:
  iface |= 0x3 << 8;
  break;
 case 135:
  iface |= 0x3 << 8 | WM8350_AIF_LRCLK_INV;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 case 133:
  iface |= WM8350_AIF_LRCLK_INV | WM8350_AIF_BCLK_INV;
  break;
 case 132:
  iface |= WM8350_AIF_BCLK_INV;
  break;
 case 130:
  iface |= WM8350_AIF_LRCLK_INV;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, WM8350_AI_FORMATING, iface);
 snd_soc_component_write(component, WM8350_AI_DAC_CONTROL, master);
 snd_soc_component_write(component, WM8350_DAC_LR_RATE, dac_lrc);
 snd_soc_component_write(component, WM8350_ADC_LR_RATE, adc_lrc);
 return 0;
}
