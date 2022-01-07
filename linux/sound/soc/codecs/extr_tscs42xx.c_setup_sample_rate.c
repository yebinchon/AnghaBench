
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tscs42xx {unsigned int samplerate; int audio_params_lock; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 int RM_DACSR_DBM ;
 int RM_DACSR_DBR ;
 unsigned int RV_DACSR_DBM_1 ;
 unsigned int RV_DACSR_DBM_2 ;
 unsigned int RV_DACSR_DBM_PT25 ;
 unsigned int RV_DACSR_DBM_PT5 ;
 unsigned int RV_DACSR_DBR_32 ;
 unsigned int RV_DACSR_DBR_44_1 ;
 unsigned int RV_DACSR_DBR_48 ;
 int R_ADCSR ;
 int R_DACSR ;
 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tscs42xx* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int setup_sample_rate(struct snd_soc_component *component,
  unsigned int rate)
{
 struct tscs42xx *tscs42xx = snd_soc_component_get_drvdata(component);
 unsigned int br, bm;
 int ret;

 switch (rate) {
 case 8000:
  br = RV_DACSR_DBR_32;
  bm = RV_DACSR_DBM_PT25;
  break;
 case 16000:
  br = RV_DACSR_DBR_32;
  bm = RV_DACSR_DBM_PT5;
  break;
 case 24000:
  br = RV_DACSR_DBR_48;
  bm = RV_DACSR_DBM_PT5;
  break;
 case 32000:
  br = RV_DACSR_DBR_32;
  bm = RV_DACSR_DBM_1;
  break;
 case 48000:
  br = RV_DACSR_DBR_48;
  bm = RV_DACSR_DBM_1;
  break;
 case 96000:
  br = RV_DACSR_DBR_48;
  bm = RV_DACSR_DBM_2;
  break;
 case 11025:
  br = RV_DACSR_DBR_44_1;
  bm = RV_DACSR_DBM_PT25;
  break;
 case 22050:
  br = RV_DACSR_DBR_44_1;
  bm = RV_DACSR_DBM_PT5;
  break;
 case 44100:
  br = RV_DACSR_DBR_44_1;
  bm = RV_DACSR_DBM_1;
  break;
 case 88200:
  br = RV_DACSR_DBR_44_1;
  bm = RV_DACSR_DBM_2;
  break;
 default:
  dev_err(component->dev, "Unsupported sample rate %d\n", rate);
  return -EINVAL;
 }


 ret = snd_soc_component_update_bits(component,
   R_DACSR, RM_DACSR_DBR, br);
 if (ret < 0) {
  dev_err(component->dev,
    "Failed to update register (%d)\n", ret);
  return ret;
 }
 ret = snd_soc_component_update_bits(component,
   R_DACSR, RM_DACSR_DBM, bm);
 if (ret < 0) {
  dev_err(component->dev,
    "Failed to update register (%d)\n", ret);
  return ret;
 }
 ret = snd_soc_component_update_bits(component,
   R_ADCSR, RM_DACSR_DBR, br);
 if (ret < 0) {
  dev_err(component->dev,
    "Failed to update register (%d)\n", ret);
  return ret;
 }
 ret = snd_soc_component_update_bits(component,
   R_ADCSR, RM_DACSR_DBM, bm);
 if (ret < 0) {
  dev_err(component->dev,
    "Failed to update register (%d)\n", ret);
  return ret;
 }

 mutex_lock(&tscs42xx->audio_params_lock);

 tscs42xx->samplerate = rate;

 mutex_unlock(&tscs42xx->audio_params_lock);

 return 0;
}
