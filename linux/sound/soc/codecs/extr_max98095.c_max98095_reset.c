
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;


 int M98095_00F_HOST_CFG ;
 int M98095_010_HOST_INT_CFG ;
 int M98095_097_PWR_SYS ;
 int M98095_REG_MAX_CACHED ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int,int ) ;

__attribute__((used)) static int max98095_reset(struct snd_soc_component *component)
{
 int i, ret;



 ret = snd_soc_component_write(component, M98095_00F_HOST_CFG, 0);
 if (ret < 0) {
  dev_err(component->dev, "Failed to reset DSP: %d\n", ret);
  return ret;
 }

 ret = snd_soc_component_write(component, M98095_097_PWR_SYS, 0);
 if (ret < 0) {
  dev_err(component->dev, "Failed to reset component: %d\n", ret);
  return ret;
 }



 for (i = M98095_010_HOST_INT_CFG; i < M98095_REG_MAX_CACHED; i++) {
  ret = snd_soc_component_write(component, i, snd_soc_component_read32(component, i));
  if (ret < 0) {
   dev_err(component->dev, "Failed to reset: %d\n", ret);
   return ret;
  }
 }

 return ret;
}
