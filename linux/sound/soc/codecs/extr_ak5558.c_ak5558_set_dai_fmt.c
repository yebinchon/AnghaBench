
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int AK5558_02_CONTROL1 ;
 int AK5558_DIF ;
 int AK5558_DIF_I2S_MODE ;
 int AK5558_DIF_MSB_MODE ;
 int EINVAL ;





 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int dev_err (int ,char*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static int ak5558_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 u8 format;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 131:
  break;
 case 134:
  break;
 case 132:
 case 133:
 default:
  dev_err(dai->dev, "Clock mode unsupported");
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  format = AK5558_DIF_I2S_MODE;
  break;
 case 128:
  format = AK5558_DIF_MSB_MODE;
  break;
 case 130:
  format = AK5558_DIF_MSB_MODE;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, AK5558_02_CONTROL1, AK5558_DIF, format);

 return 0;
}
