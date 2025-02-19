
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int TAS5720_VOLUME_CTRL_REG ;
 int TAS5722_DIGITAL_CTRL2_REG ;
 int TAS5722_VOL_CONTROL_LSB ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,unsigned int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,unsigned int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int tas5722_volume_set(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 unsigned int sel = ucontrol->value.integer.value[0];

 snd_soc_component_write(component, TAS5720_VOLUME_CTRL_REG, sel >> 1);
 snd_soc_component_update_bits(component, TAS5722_DIGITAL_CTRL2_REG,
          TAS5722_VOL_CONTROL_LSB, sel);

 return 0;
}
