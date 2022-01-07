
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct wm8350_output {int active; int right_vol; int left_vol; } ;
struct wm8350_data {struct wm8350_output out2; struct wm8350_output out1; } ;
struct soc_mixer_control {unsigned int reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;




 int WM8350_OUT1_VU ;
 struct wm8350_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,unsigned int) ;
 int snd_soc_component_write (struct snd_soc_component*,unsigned int,int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int wm8350_put_volsw_2r_vu(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct wm8350_data *wm8350_priv = snd_soc_component_get_drvdata(component);
 struct wm8350_output *out = ((void*)0);
 struct soc_mixer_control *mc =
  (struct soc_mixer_control *)kcontrol->private_value;
 int ret;
 unsigned int reg = mc->reg;
 u16 val;




 switch (reg) {
 case 129:
  out = &wm8350_priv->out1;
  break;
 case 128:
  out = &wm8350_priv->out2;
  break;
 default:
  break;
 }

 if (out) {
  out->left_vol = ucontrol->value.integer.value[0];
  out->right_vol = ucontrol->value.integer.value[1];
  if (!out->active)
   return 1;
 }

 ret = snd_soc_put_volsw(kcontrol, ucontrol);
 if (ret < 0)
  return ret;


 val = snd_soc_component_read32(component, reg);
 snd_soc_component_write(component, reg, val | WM8350_OUT1_VU);
 return 1;
}
