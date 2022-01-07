
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct adau {int regmap; } ;


 int ADAU17X1_CONVERTER0 ;
 int ADAU17X1_CONVERTER0_ADOSR ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int adau17x1_adc_fixup(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct adau *adau = snd_soc_component_get_drvdata(component);
 regmap_update_bits(adau->regmap, ADAU17X1_CONVERTER0,
  ADAU17X1_CONVERTER0_ADOSR, ADAU17X1_CONVERTER0_ADOSR);
 regmap_update_bits(adau->regmap, ADAU17X1_CONVERTER0,
  ADAU17X1_CONVERTER0_ADOSR, 0);

 return 0;
}
