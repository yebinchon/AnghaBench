
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;


 unsigned int RT5631_M_DAC_L_TO_OUTMIXER_L ;
 int RT5631_OUTMIXER_L_CTRL ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int check_dacl_to_outmixl(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 unsigned int reg;

 reg = snd_soc_component_read32(component, RT5631_OUTMIXER_L_CTRL);
 return !(reg & RT5631_M_DAC_L_TO_OUTMIXER_L);
}
