
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wcd9335_codec {int * comp_enabled; } ;
struct soc_mixer_control {int shift; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct wcd9335_codec* dev_get_drvdata (int ) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int wcd9335_get_compander(struct snd_kcontrol *kc,
          struct snd_ctl_elem_value *ucontrol)
{

 struct snd_soc_component *component = snd_soc_kcontrol_component(kc);
 int comp = ((struct soc_mixer_control *)kc->private_value)->shift;
 struct wcd9335_codec *wcd = dev_get_drvdata(component->dev);

 ucontrol->value.integer.value[0] = wcd->comp_enabled[comp];
 return 0;
}
