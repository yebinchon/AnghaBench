
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int DA7218_HP_AMP_OE_MASK ;
 int EINVAL ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int da7218_hp_pga_event(struct snd_soc_dapm_widget *w,
          struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 129:

  snd_soc_component_update_bits(component, w->reg, DA7218_HP_AMP_OE_MASK,
        DA7218_HP_AMP_OE_MASK);
  return 0;
 case 128:

  snd_soc_component_update_bits(component, w->reg, DA7218_HP_AMP_OE_MASK, 0);
  return 0;
 default:
  return -EINVAL;
 }
}
