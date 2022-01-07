
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {struct isight* private_data; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct isight {scalar_t__ gain_min; scalar_t__ gain_max; } ;


 int EINVAL ;
 int REG_GAIN ;
 int cpu_to_be32 (scalar_t__) ;
 int reg_write (struct isight*,int ,int ) ;

__attribute__((used)) static int isight_gain_put(struct snd_kcontrol *ctl,
      struct snd_ctl_elem_value *value)
{
 struct isight *isight = ctl->private_data;

 if (value->value.integer.value[0] < isight->gain_min ||
     value->value.integer.value[0] > isight->gain_max)
  return -EINVAL;

 return reg_write(isight, REG_GAIN,
    cpu_to_be32(value->value.integer.value[0]));
}
