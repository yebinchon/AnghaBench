
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;


 unsigned int NAU8822_CLKM_MASK ;
 int NAU8822_REG_CLOCKING ;
 unsigned int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int check_mclk_select_pll(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(source->dapm);
 unsigned int value;

 value = snd_soc_component_read32(component, NAU8822_REG_CLOCKING);

 return (value & NAU8822_CLKM_MASK);
}
