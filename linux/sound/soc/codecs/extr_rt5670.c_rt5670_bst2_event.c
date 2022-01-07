
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT5670_PWR_ANLG2 ;
 int RT5670_PWR_BST2_P ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5670_bst2_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  snd_soc_component_update_bits(component, RT5670_PWR_ANLG2,
        RT5670_PWR_BST2_P, RT5670_PWR_BST2_P);
  break;

 case 128:
  snd_soc_component_update_bits(component, RT5670_PWR_ANLG2,
        RT5670_PWR_BST2_P, 0);
  break;

 default:
  return 0;
 }

 return 0;
}
