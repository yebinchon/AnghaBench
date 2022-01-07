
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_component {int dev; } ;
struct rt5651_priv {int jd_src; int jd_active_high; int ovcd_sf; void* ovcd_th; } ;


 int RT5651_GP2_PIN_DMIC1_SCL ;
 int RT5651_GP2_PIN_MASK ;
 int RT5651_GPIO_CTRL1 ;
 int RT5651_IN1_IN2 ;
 int RT5651_IN_DF2 ;
 void* RT5651_MIC1_OVTH_1500UA ;
 void* RT5651_MIC1_OVTH_2000UA ;
 void* RT5651_MIC1_OVTH_600UA ;
 int RT5651_MIC_OVCD_SF_0P75 ;
 int RT5651_MIC_OVCD_SF_SFT ;
 int RT5651_OVCD_SF_1P5 ;
 int dev_warn (int ,char*,int) ;
 scalar_t__ device_property_read_bool (int ,char*) ;
 scalar_t__ device_property_read_u32 (int ,char*,int*) ;
 struct rt5651_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;

__attribute__((used)) static void rt5651_apply_properties(struct snd_soc_component *component)
{
 struct rt5651_priv *rt5651 = snd_soc_component_get_drvdata(component);
 u32 val;

 if (device_property_read_bool(component->dev, "realtek,in2-differential"))
  snd_soc_component_update_bits(component, RT5651_IN1_IN2,
    RT5651_IN_DF2, RT5651_IN_DF2);

 if (device_property_read_bool(component->dev, "realtek,dmic-en"))
  snd_soc_component_update_bits(component, RT5651_GPIO_CTRL1,
    RT5651_GP2_PIN_MASK, RT5651_GP2_PIN_DMIC1_SCL);

 if (device_property_read_u32(component->dev,
         "realtek,jack-detect-source", &val) == 0)
  rt5651->jd_src = val;

 if (device_property_read_bool(component->dev, "realtek,jack-detect-not-inverted"))
  rt5651->jd_active_high = 1;






 rt5651->ovcd_th = RT5651_MIC1_OVTH_2000UA;
 rt5651->ovcd_sf = RT5651_MIC_OVCD_SF_0P75;

 if (device_property_read_u32(component->dev,
   "realtek,over-current-threshold-microamp", &val) == 0) {
  switch (val) {
  case 600:
   rt5651->ovcd_th = RT5651_MIC1_OVTH_600UA;
   break;
  case 1500:
   rt5651->ovcd_th = RT5651_MIC1_OVTH_1500UA;
   break;
  case 2000:
   rt5651->ovcd_th = RT5651_MIC1_OVTH_2000UA;
   break;
  default:
   dev_warn(component->dev, "Warning: Invalid over-current-threshold-microamp value: %d, defaulting to 2000uA\n",
     val);
  }
 }

 if (device_property_read_u32(component->dev,
   "realtek,over-current-scale-factor", &val) == 0) {
  if (val <= RT5651_OVCD_SF_1P5)
   rt5651->ovcd_sf = val << RT5651_MIC_OVCD_SF_SFT;
  else
   dev_warn(component->dev, "Warning: Invalid over-current-scale-factor value: %d, defaulting to 0.75\n",
     val);
 }
}
