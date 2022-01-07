
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct adav80x {int regmap; } ;


 int ADAV80X_DAC_CTRL3 ;
 int ADAV80X_PLL_OUTE ;
 int regmap_write (int ,int ,int) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct adav80x* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_dapm_force_enable_pin (struct snd_soc_dapm_context*,char*) ;

__attribute__((used)) static int adav80x_probe(struct snd_soc_component *component)
{
 struct snd_soc_dapm_context *dapm = snd_soc_component_get_dapm(component);
 struct adav80x *adav80x = snd_soc_component_get_drvdata(component);


 snd_soc_dapm_force_enable_pin(dapm, "PLL1");
 snd_soc_dapm_force_enable_pin(dapm, "PLL2");


 regmap_write(adav80x->regmap, ADAV80X_PLL_OUTE, 0x20);

 regmap_write(adav80x->regmap, ADAV80X_DAC_CTRL3, 0x6);

 return 0;
}
