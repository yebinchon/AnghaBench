
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
typedef int snd_pcm_format_t ;


 int EINVAL ;
 int RM_AIC1_WL ;
 unsigned int RV_AIC1_WL_16 ;
 unsigned int RV_AIC1_WL_20 ;
 unsigned int RV_AIC1_WL_24 ;
 unsigned int RV_AIC1_WL_32 ;
 int R_AIC1 ;




 int dev_err (int ,char*,int) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;

__attribute__((used)) static int setup_sample_format(struct snd_soc_component *component,
  snd_pcm_format_t format)
{
 unsigned int width;
 int ret;

 switch (format) {
 case 131:
  width = RV_AIC1_WL_16;
  break;
 case 130:
  width = RV_AIC1_WL_20;
  break;
 case 129:
  width = RV_AIC1_WL_24;
  break;
 case 128:
  width = RV_AIC1_WL_32;
  break;
 default:
  ret = -EINVAL;
  dev_err(component->dev, "Unsupported format width (%d)\n", ret);
  return ret;
 }
 ret = snd_soc_component_update_bits(component,
   R_AIC1, RM_AIC1_WL, width);
 if (ret < 0) {
  dev_err(component->dev,
    "Failed to set sample width (%d)\n", ret);
  return ret;
 }

 return 0;
}
