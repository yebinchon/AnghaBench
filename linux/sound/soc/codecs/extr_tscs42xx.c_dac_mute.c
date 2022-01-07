
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int RM_CNVRTR1_DACMU ;
 int RV_CNVRTR1_DACMU_ENABLE ;
 int R_CNVRTR1 ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static inline int dac_mute(struct snd_soc_component *component)
{
 int ret;

 ret = snd_soc_component_update_bits(component,
   R_CNVRTR1, RM_CNVRTR1_DACMU,
  RV_CNVRTR1_DACMU_ENABLE);
 if (ret < 0) {
  dev_err(component->dev, "Failed to mute DAC (%d)\n",
    ret);
  return ret;
 }

 return 0;
}
