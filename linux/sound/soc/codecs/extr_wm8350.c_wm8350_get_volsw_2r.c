
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm8350_output {int right_vol; int left_vol; } ;
struct wm8350_data {struct wm8350_output out2; struct wm8350_output out1; } ;
struct soc_mixer_control {unsigned int reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;




 struct wm8350_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_get_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int wm8350_get_volsw_2r(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm8350_data *wm8350_priv = snd_soc_component_get_drvdata(component);
 struct wm8350_output *out1 = &wm8350_priv->out1;
 struct wm8350_output *out2 = &wm8350_priv->out2;
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 unsigned int reg = mc->reg;


 switch (reg) {
 case 129:
  ucontrol->value.integer.value[0] = out1->left_vol;
  ucontrol->value.integer.value[1] = out1->right_vol;
  return 0;

 case 128:
  ucontrol->value.integer.value[0] = out2->left_vol;
  ucontrol->value.integer.value[1] = out2->right_vol;
  return 0;

 default:
  break;
 }

 return snd_soc_get_volsw(kcontrol, ucontrol);
}
