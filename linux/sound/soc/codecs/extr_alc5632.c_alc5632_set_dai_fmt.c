
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int ALC5632_DAI_CONTROL ;
 int ALC5632_DAI_I2S_DF_I2S ;
 int ALC5632_DAI_I2S_DF_LEFT ;
 int ALC5632_DAI_I2S_DF_PCM_A ;
 int ALC5632_DAI_I2S_DF_PCM_B ;
 int ALC5632_DAI_MAIN_I2S_BCLK_POL_CTRL ;
 int ALC5632_DAI_SDP_MASTER_MODE ;
 int ALC5632_DAI_SDP_SLAVE_MODE ;
 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int alc5632_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 u16 iface = 0;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 137:
  iface = ALC5632_DAI_SDP_MASTER_MODE;
  break;
 case 136:
  iface = ALC5632_DAI_SDP_SLAVE_MODE;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 133:
  iface |= ALC5632_DAI_I2S_DF_I2S;
  break;
 case 130:
  iface |= ALC5632_DAI_I2S_DF_LEFT;
  break;
 case 135:
  iface |= ALC5632_DAI_I2S_DF_PCM_A;
  break;
 case 134:
  iface |= ALC5632_DAI_I2S_DF_PCM_B;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 case 132:
  iface |= ALC5632_DAI_MAIN_I2S_BCLK_POL_CTRL;
  break;
 case 131:
  iface |= ALC5632_DAI_MAIN_I2S_BCLK_POL_CTRL;
  break;
 case 129:
  break;
 default:
  return -EINVAL;
 }

 return snd_soc_component_write(component, ALC5632_DAI_CONTROL, iface);
}
