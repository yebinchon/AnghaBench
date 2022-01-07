
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;


 int RT5631_ADC_REC_MIXER ;
 unsigned int RT5631_M_MIC2_TO_RECMIXER_R ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int check_adcr_select(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 unsigned int reg;

 reg = snd_soc_component_read32(component, RT5631_ADC_REC_MIXER);
 return !(reg & RT5631_M_MIC2_TO_RECMIXER_R);
}
