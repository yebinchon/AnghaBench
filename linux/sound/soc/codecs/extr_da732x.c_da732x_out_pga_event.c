
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int DA732X_OUT_HIZ_DIS ;
 int DA732X_OUT_HIZ_EN ;
 int EINVAL ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int da732x_out_pga_event(struct snd_soc_dapm_widget *w,
    struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  snd_soc_component_update_bits(component, w->reg,
        (1 << w->shift) | DA732X_OUT_HIZ_EN,
        (1 << w->shift) | DA732X_OUT_HIZ_EN);
  break;
 case 129:
  snd_soc_component_update_bits(component, w->reg,
        (1 << w->shift) | DA732X_OUT_HIZ_EN,
        (1 << w->shift) | DA732X_OUT_HIZ_DIS);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
