
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct da7219_priv {struct da7219_aad_priv* aad; } ;
struct da7219_aad_priv {int micbias_resume_enable; scalar_t__ jack_inserted; scalar_t__ jack; } ;


 int DA7219_ACCDET_CONFIG_1 ;
 int DA7219_ACCDET_EN_MASK ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

void da7219_aad_resume(struct snd_soc_component *component)
{
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 struct da7219_aad_priv *da7219_aad = da7219->aad;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);

 if (da7219_aad->jack) {

  if (da7219_aad->jack_inserted &&
      da7219_aad->micbias_resume_enable) {
   snd_soc_dapm_force_enable_pin(dapm, "Mic Bias");
   snd_soc_dapm_sync(dapm);
   da7219_aad->micbias_resume_enable = 0;
  }


  snd_soc_component_update_bits(component, DA7219_ACCDET_CONFIG_1,
        DA7219_ACCDET_EN_MASK,
        DA7219_ACCDET_EN_MASK);
 }
}
