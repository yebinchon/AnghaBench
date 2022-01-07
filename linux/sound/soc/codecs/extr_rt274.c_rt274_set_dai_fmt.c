
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct rt274_priv {int master; } ;


 int EINVAL ;
 int RT274_ADC_FORMAT ;
 int RT274_DAC_FORMAT ;
 int RT274_I2S_CTRL1 ;
 int RT274_I2S_FMT_I2S ;
 int RT274_I2S_FMT_LJ ;
 int RT274_I2S_FMT_MASK ;
 int RT274_I2S_FMT_PCMA ;
 int RT274_I2S_FMT_PCMB ;
 int RT274_I2S_MODE_M ;
 int RT274_I2S_MODE_MASK ;
 int RT274_I2S_MODE_S ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 struct rt274_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int ) ;

__attribute__((used)) static int rt274_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 struct rt274_priv *rt274 = snd_soc_component_get_drvdata(component);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133:
  snd_soc_component_update_bits(component,
   RT274_I2S_CTRL1, RT274_I2S_MODE_MASK, RT274_I2S_MODE_M);
  rt274->master = 1;
  break;
 case 132:
  snd_soc_component_update_bits(component,
   RT274_I2S_CTRL1, RT274_I2S_MODE_MASK, RT274_I2S_MODE_S);
  rt274->master = 0;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  snd_soc_component_update_bits(component, RT274_I2S_CTRL1,
     RT274_I2S_FMT_MASK, RT274_I2S_FMT_I2S);
  break;
 case 128:
  snd_soc_component_update_bits(component, RT274_I2S_CTRL1,
     RT274_I2S_FMT_MASK, RT274_I2S_FMT_LJ);
  break;
 case 131:
  snd_soc_component_update_bits(component, RT274_I2S_CTRL1,
     RT274_I2S_FMT_MASK, RT274_I2S_FMT_PCMA);
  break;
 case 130:
  snd_soc_component_update_bits(component, RT274_I2S_CTRL1,
     RT274_I2S_FMT_MASK, RT274_I2S_FMT_PCMB);
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, RT274_DAC_FORMAT, 0x8000, 0);
 snd_soc_component_update_bits(component, RT274_ADC_FORMAT, 0x8000, 0);

 return 0;
}
