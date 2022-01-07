
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct ad193x_priv {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ad193x_adc_audio_paths ;
 int ad193x_adc_snd_controls ;
 int ad193x_adc_widgets ;
 scalar_t__ ad193x_has_adc (struct ad193x_priv*) ;
 int ad193x_reg_default_init (struct ad193x_priv*) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct ad193x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int) ;
 int snd_soc_dapm_new_controls (struct snd_soc_dapm_context*,int ,int) ;

__attribute__((used)) static int ad193x_component_probe(struct snd_soc_component *component)
{
 struct ad193x_priv *ad193x = snd_soc_component_get_drvdata(component);
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 int num, ret;


 ad193x_reg_default_init(ad193x);


 if (ad193x_has_adc(ad193x)) {

  num = ARRAY_SIZE(ad193x_adc_snd_controls);
  ret = snd_soc_add_component_controls(component,
       ad193x_adc_snd_controls,
       num);
  if (ret)
   return ret;


  num = ARRAY_SIZE(ad193x_adc_widgets);
  ret = snd_soc_dapm_new_controls(dapm,
      ad193x_adc_widgets,
      num);
  if (ret)
   return ret;


  num = ARRAY_SIZE(ad193x_adc_audio_paths);
  ret = snd_soc_dapm_add_routes(dapm,
           ad193x_adc_audio_paths,
           num);
  if (ret)
   return ret;
 }

 return 0;
}
