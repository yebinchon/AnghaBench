
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int CTRL0_SPDIF_SEL ;
 int g12a_tohdmitx_get_input_val (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_dapm_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int g12a_tohdmitx_spdif_mux_get_enum(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component =
  snd_soc_dapm_kcontrol_component(kcontrol);

 ucontrol->value.enumerated.item[0] =
  g12a_tohdmitx_get_input_val(component, CTRL0_SPDIF_SEL);

 return 0;
}
