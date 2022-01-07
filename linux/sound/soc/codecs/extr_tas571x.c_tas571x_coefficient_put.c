
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct i2c_client {int dummy; } ;


 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int tas571x_reg_write_multiword (struct i2c_client*,int,int ,int) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int tas571x_coefficient_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct i2c_client *i2c = to_i2c_client(component->dev);
 int numcoef = kcontrol->private_value >> 16;
 int index = kcontrol->private_value & 0xffff;

 return tas571x_reg_write_multiword(i2c, index,
  ucontrol->value.integer.value, numcoef);
}
