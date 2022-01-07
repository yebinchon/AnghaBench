
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct mtk_base_afe {int regmap; } ;


 struct mtk_base_afe* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_init_regmap (struct snd_soc_component*,int ) ;

__attribute__((used)) static int mt2701_afe_pcm_probe(struct snd_soc_component *component)
{
 struct mtk_base_afe *afe = snd_soc_component_get_drvdata(component);

 snd_soc_component_init_regmap(component, afe->regmap);

 return 0;
}
