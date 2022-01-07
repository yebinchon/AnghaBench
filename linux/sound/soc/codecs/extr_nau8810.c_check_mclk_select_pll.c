
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct nau8810 {int regmap; } ;


 unsigned int NAU8810_CLKM_MASK ;
 int NAU8810_REG_CLOCK ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct nau8810* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int check_mclk_select_pll(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 struct nau8810 *nau8810 = snd_soc_component_get_drvdata(component);
 unsigned int value;

 regmap_read(nau8810->regmap, NAU8810_REG_CLOCK, &value);
 return (value & NAU8810_CLKM_MASK);
}
