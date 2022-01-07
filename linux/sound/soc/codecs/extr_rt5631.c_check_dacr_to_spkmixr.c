
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;


 unsigned int RT5631_M_DAC_R_TO_SPKMIXER_R ;
 int RT5631_SPK_MIXER_CTRL ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int check_dacr_to_spkmixr(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 unsigned int reg;

 reg = snd_soc_component_read32(component, RT5631_SPK_MIXER_CTRL);
 return !(reg & RT5631_M_DAC_R_TO_SPKMIXER_R);
}
