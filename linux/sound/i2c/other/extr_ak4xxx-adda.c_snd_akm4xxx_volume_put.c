
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int AK_GET_ADDR (int ) ;
 unsigned int AK_GET_MASK (int ) ;
 int EINVAL ;
 int put_ak_reg (struct snd_kcontrol*,int ,unsigned int) ;

__attribute__((used)) static int snd_akm4xxx_volume_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 unsigned int mask = AK_GET_MASK(kcontrol->private_value);
 unsigned int val = ucontrol->value.integer.value[0];
 if (val > mask)
  return -EINVAL;
 return put_ak_reg(kcontrol, AK_GET_ADDR(kcontrol->private_value), val);
}
