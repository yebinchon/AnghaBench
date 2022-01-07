
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int RM_CNVRTR0_ADCMU ;
 int RV_CNVRTR0_ADCMU_DISABLE ;
 int R_CNVRTR0 ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static inline int adc_unmute(struct snd_soc_component *component)
{
 int ret;

 ret = snd_soc_component_update_bits(component,
   R_CNVRTR0, RM_CNVRTR0_ADCMU, RV_CNVRTR0_ADCMU_DISABLE);
 if (ret < 0) {
  dev_err(component->dev, "Failed to unmute ADC (%d)\n",
    ret);
  return ret;
 }

 return 0;
}
