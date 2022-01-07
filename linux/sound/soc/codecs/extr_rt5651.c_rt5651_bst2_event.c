
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT5651_PWR_ANLG2 ;
 int RT5651_PWR_BST2_OP2 ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5651_bst2_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  snd_soc_component_update_bits(component, RT5651_PWR_ANLG2,
   RT5651_PWR_BST2_OP2, RT5651_PWR_BST2_OP2);
  break;

 case 128:
  snd_soc_component_update_bits(component, RT5651_PWR_ANLG2,
   RT5651_PWR_BST2_OP2, 0);
  break;

 default:
  return 0;
 }

 return 0;
}
