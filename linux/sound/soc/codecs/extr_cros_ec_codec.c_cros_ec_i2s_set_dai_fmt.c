
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
typedef enum ec_i2s_config { ____Placeholder_ec_i2s_config } ec_i2s_config ;


 int EC_DAI_FMT_I2S ;
 int EC_DAI_FMT_LEFT_J ;
 int EC_DAI_FMT_PCM_A ;
 int EC_DAI_FMT_PCM_B ;
 int EC_DAI_FMT_RIGHT_J ;
 int EINVAL ;



 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int set_i2s_config (struct snd_soc_component*,int) ;

__attribute__((used)) static int cros_ec_i2s_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 enum ec_i2s_config i2s_config;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 134:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 131:
  i2s_config = EC_DAI_FMT_I2S;
  break;

 case 128:
  i2s_config = EC_DAI_FMT_RIGHT_J;
  break;

 case 130:
  i2s_config = EC_DAI_FMT_LEFT_J;
  break;

 case 133:
  i2s_config = EC_DAI_FMT_PCM_A;
  break;

 case 132:
  i2s_config = EC_DAI_FMT_PCM_B;
  break;

 default:
  return -EINVAL;
 }

 return set_i2s_config(component, i2s_config);
}
