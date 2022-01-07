
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tlv320dac33_priv {scalar_t__ fifo_mode; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {scalar_t__* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 scalar_t__ DAC33_FIFO_LAST_MODE ;
 int EINVAL ;
 int EPERM ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 scalar_t__ snd_soc_component_is_active (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int dac33_set_fifo_mode(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);
 int ret = 0;

 if (dac33->fifo_mode == ucontrol->value.enumerated.item[0])
  return 0;

 if (snd_soc_component_is_active(component))
  return -EPERM;

 if (ucontrol->value.enumerated.item[0] >= DAC33_FIFO_LAST_MODE)
  ret = -EINVAL;
 else
  dac33->fifo_mode = ucontrol->value.enumerated.item[0];

 return ret;
}
