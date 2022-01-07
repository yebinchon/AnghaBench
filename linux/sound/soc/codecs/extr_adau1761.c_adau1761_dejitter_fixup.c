
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct adau {int regmap; int master; } ;


 int ADAU1761_DEJITTER ;
 int regmap_write (int ,int ,int) ;
 struct adau* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int adau1761_dejitter_fixup(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct adau *adau = snd_soc_component_get_drvdata(component);



 regmap_write(adau->regmap, ADAU1761_DEJITTER, 0);
 if (!adau->master)
  regmap_write(adau->regmap, ADAU1761_DEJITTER, 3);

 return 0;
}
