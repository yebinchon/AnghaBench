
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct da7219_priv {struct da7219_aad_priv* aad; } ;
struct da7219_aad_priv {int micbias_resume_enable; scalar_t__ jack_inserted; scalar_t__ jack; } ;


 int DA7219_ACCDET_CONFIG_1 ;
 int DA7219_ACCDET_EN_MASK ;
 int DA7219_MICBIAS1_EN_MASK ;
 int DA7219_MICBIAS_CTRL ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct da7219_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_dapm_context*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_dapm_context*) ;

void da7219_aad_suspend(struct snd_soc_component *component)
{
 struct da7219_priv *da7219 = snd_soc_component_get_drvdata(component);
 struct da7219_aad_priv *da7219_aad = da7219->aad;
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 u8 micbias_ctrl;

 if (da7219_aad->jack) {

  snd_soc_component_update_bits(component, DA7219_ACCDET_CONFIG_1,
        DA7219_ACCDET_EN_MASK, 0);







  if (da7219_aad->jack_inserted) {
   micbias_ctrl = snd_soc_component_read32(component, DA7219_MICBIAS_CTRL);
   if (micbias_ctrl & DA7219_MICBIAS1_EN_MASK) {
    snd_soc_dapm_disable_pin(dapm, "Mic Bias");
    snd_soc_dapm_sync(dapm);
    da7219_aad->micbias_resume_enable = 1;
   }
  }
 }
}
