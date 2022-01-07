
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct aic31xx_priv {int codec_type; } ;


 int AIC31XX_STEREO_CLASS_D_BIT ;
 int ARRAY_SIZE (int ) ;
 int DAC31XX_BIT ;
 int aic310x_snd_controls ;
 int aic311x_snd_controls ;
 int aic31xx_snd_controls ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct aic31xx_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int aic31xx_add_controls(struct snd_soc_component *component)
{
 int ret = 0;
 struct aic31xx_priv *aic31xx = snd_soc_component_get_drvdata(component);

 if (!(aic31xx->codec_type & DAC31XX_BIT))
  ret = snd_soc_add_component_controls(
   component, aic31xx_snd_controls,
   ARRAY_SIZE(aic31xx_snd_controls));
 if (ret)
  return ret;

 if (aic31xx->codec_type & AIC31XX_STEREO_CLASS_D_BIT)
  ret = snd_soc_add_component_controls(
   component, aic311x_snd_controls,
   ARRAY_SIZE(aic311x_snd_controls));
 else
  ret = snd_soc_add_component_controls(
   component, aic310x_snd_controls,
   ARRAY_SIZE(aic310x_snd_controls));

 return ret;
}
