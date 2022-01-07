
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int RT5663_PWR_ANLG_2 ;
 int RT5663_PWR_BST2 ;
 int RT5663_PWR_BST2_MASK ;
 int RT5663_PWR_BST2_OP ;
 int RT5663_PWR_BST2_OP_MASK ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt5663_bst2_power(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:
  snd_soc_component_update_bits(component, RT5663_PWR_ANLG_2,
   RT5663_PWR_BST2_MASK | RT5663_PWR_BST2_OP_MASK,
   RT5663_PWR_BST2 | RT5663_PWR_BST2_OP);
  break;

 case 128:
  snd_soc_component_update_bits(component, RT5663_PWR_ANLG_2,
   RT5663_PWR_BST2_MASK | RT5663_PWR_BST2_OP_MASK, 0);
  break;

 default:
  return 0;
 }

 return 0;
}
