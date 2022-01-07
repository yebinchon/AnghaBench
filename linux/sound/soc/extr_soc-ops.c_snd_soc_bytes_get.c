
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct soc_bytes {int num_regs; scalar_t__ mask; int base; } ;
struct snd_soc_component {int val_bytes; scalar_t__ regmap; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__* data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int cpu_to_be16 (scalar_t__) ;
 int cpu_to_be32 (scalar_t__) ;
 int regmap_raw_read (scalar_t__,int ,scalar_t__*,int) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;

int snd_soc_bytes_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct soc_bytes *params = (void *)kcontrol->private_value;
 int ret;

 if (component->regmap)
  ret = regmap_raw_read(component->regmap, params->base,
          ucontrol->value.bytes.data,
          params->num_regs * component->val_bytes);
 else
  ret = -EINVAL;


 if (ret == 0 && params->mask) {
  switch (component->val_bytes) {
  case 1:
   ucontrol->value.bytes.data[0] &= ~params->mask;
   break;
  case 2:
   ((u16 *)(&ucontrol->value.bytes.data))[0]
    &= cpu_to_be16(~params->mask);
   break;
  case 4:
   ((u32 *)(&ucontrol->value.bytes.data))[0]
    &= cpu_to_be32(~params->mask);
   break;
  default:
   return -EINVAL;
  }
 }

 return ret;
}
