
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int RT286_ADC_FORMAT ;
 int RT286_DAC_FORMAT ;
 int RT286_I2S_CTRL1 ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;

__attribute__((used)) static int rt286_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133:
  snd_soc_component_update_bits(component,
   RT286_I2S_CTRL1, 0x800, 0x800);
  break;
 case 132:
  snd_soc_component_update_bits(component,
   RT286_I2S_CTRL1, 0x800, 0x0);
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  snd_soc_component_update_bits(component,
   RT286_I2S_CTRL1, 0x300, 0x0);
  break;
 case 128:
  snd_soc_component_update_bits(component,
   RT286_I2S_CTRL1, 0x300, 0x1 << 8);
  break;
 case 131:
  snd_soc_component_update_bits(component,
   RT286_I2S_CTRL1, 0x300, 0x2 << 8);
  break;
 case 130:
  snd_soc_component_update_bits(component,
   RT286_I2S_CTRL1, 0x300, 0x3 << 8);
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, RT286_DAC_FORMAT, 0x8000, 0);
 snd_soc_component_update_bits(component, RT286_ADC_FORMAT, 0x8000, 0);

 return 0;
}
