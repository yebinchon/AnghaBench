
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int DA7210_CONTROL ;
 int DA7210_NOISE_SUP_EN ;
 int EINVAL ;
 int dev_dbg (int ,char*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int da7210_put_alc_sw(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);

 if (ucontrol->value.integer.value[0]) {

  if (snd_soc_component_read32(component, DA7210_CONTROL) & DA7210_NOISE_SUP_EN) {
   dev_dbg(component->dev,
    "Disable noise suppression to enable ALC\n");
   return -EINVAL;
  }
 }

 return snd_soc_put_volsw(kcontrol, ucontrol);
}
