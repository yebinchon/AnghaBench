
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct snd_ac97 {int dummy; } ;


 int snd_soc_component_exit_regmap (struct snd_soc_component*) ;
 struct snd_ac97* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_free_ac97_component (struct snd_ac97*) ;

__attribute__((used)) static void ad1980_soc_remove(struct snd_soc_component *component)
{
 struct snd_ac97 *ac97 = snd_soc_component_get_drvdata(component);

 snd_soc_component_exit_regmap(component);
 snd_soc_free_ac97_component(ac97);
}
