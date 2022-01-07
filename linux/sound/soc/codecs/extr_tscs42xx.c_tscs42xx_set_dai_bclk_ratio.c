
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs42xx {unsigned int bclk_ratio; int audio_params_lock; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int RM_ADCSR_ABCM ;
 int RM_DACSR_DBCM ;
 unsigned int RV_DACSR_DBCM_32 ;
 unsigned int RV_DACSR_DBCM_40 ;
 unsigned int RV_DACSR_DBCM_64 ;
 int R_ADCSR ;
 int R_DACSR ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tscs42xx* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int tscs42xx_set_dai_bclk_ratio(struct snd_soc_dai *codec_dai,
  unsigned int ratio)
{
 struct snd_soc_component *component = codec_dai->component;
 struct tscs42xx *tscs42xx = snd_soc_component_get_drvdata(component);
 unsigned int value;
 int ret = 0;

 switch (ratio) {
 case 32:
  value = RV_DACSR_DBCM_32;
  break;
 case 40:
  value = RV_DACSR_DBCM_40;
  break;
 case 64:
  value = RV_DACSR_DBCM_64;
  break;
 default:
  dev_err(component->dev, "Unsupported bclk ratio (%d)\n", ret);
  return -EINVAL;
 }

 ret = snd_soc_component_update_bits(component,
   R_DACSR, RM_DACSR_DBCM, value);
 if (ret < 0) {
  dev_err(component->dev,
    "Failed to set DAC BCLK ratio (%d)\n", ret);
  return ret;
 }
 ret = snd_soc_component_update_bits(component,
   R_ADCSR, RM_ADCSR_ABCM, value);
 if (ret < 0) {
  dev_err(component->dev,
    "Failed to set ADC BCLK ratio (%d)\n", ret);
  return ret;
 }

 mutex_lock(&tscs42xx->audio_params_lock);

 tscs42xx->bclk_ratio = ratio;

 mutex_unlock(&tscs42xx->audio_params_lock);

 return 0;
}
