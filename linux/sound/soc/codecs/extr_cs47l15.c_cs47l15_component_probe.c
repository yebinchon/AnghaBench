
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct madera {int dapm_ptr_lock; int dapm; int regmap; } ;
struct TYPE_2__ {int * adsp; struct madera* madera; } ;
struct cs47l15 {TYPE_1__ core; } ;


 int CS47L15_MONO_OUTPUTS ;
 int CS47L15_NUM_ADSP ;
 int madera_adsp_rate_controls ;
 int madera_init_inputs (struct snd_soc_component*) ;
 int madera_init_outputs (struct snd_soc_component*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 int snd_soc_component_disable_pin (struct snd_soc_component*,char*) ;
 int snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct cs47l15* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_init_regmap (struct snd_soc_component*,int ) ;
 int wm_adsp2_component_probe (int *,struct snd_soc_component*) ;

__attribute__((used)) static int cs47l15_component_probe(struct snd_soc_component *component)
{
 struct cs47l15 *cs47l15 = snd_soc_component_get_drvdata(component);
 struct madera *madera = cs47l15->core.madera;
 int ret;

 snd_soc_component_init_regmap(component, madera->regmap);

 mutex_lock(&madera->dapm_ptr_lock);
 madera->dapm = snd_soc_component_get_dapm(component);
 mutex_unlock(&madera->dapm_ptr_lock);

 ret = madera_init_inputs(component);
 if (ret)
  return ret;

 ret = madera_init_outputs(component, CS47L15_MONO_OUTPUTS);
 if (ret)
  return ret;

 snd_soc_component_disable_pin(component, "HAPTICS");

 ret = snd_soc_add_component_controls(component,
          madera_adsp_rate_controls,
          CS47L15_NUM_ADSP);
 if (ret)
  return ret;

 wm_adsp2_component_probe(&cs47l15->core.adsp[0], component);

 return 0;
}
