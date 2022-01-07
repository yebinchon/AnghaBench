
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct da7218_priv {scalar_t__ hp_single_supply; } ;


 int DA7218_CP_CTRL ;
 int DA7218_CP_EN_MASK ;
 int EINVAL ;


 struct da7218_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int da7218_cp_event(struct snd_soc_dapm_widget *w,
      struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct da7218_priv *da7218 = snd_soc_component_get_drvdata(component);





 if (da7218->hp_single_supply)
  return 0;

 switch (event) {
 case 128:
  snd_soc_component_update_bits(component, DA7218_CP_CTRL, DA7218_CP_EN_MASK,
        DA7218_CP_EN_MASK);
  return 0;
 case 129:
  snd_soc_component_update_bits(component, DA7218_CP_CTRL, DA7218_CP_EN_MASK,
        0);
  return 0;
 default:
  return -EINVAL;
 }
}
