
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int mtk_afe_add_sub_dai_control (struct snd_soc_component*) ;

__attribute__((used)) static int mt6797_afe_component_probe(struct snd_soc_component *component)
{
 return mtk_afe_add_sub_dai_control(component);
}
