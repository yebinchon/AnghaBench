
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct soc_bytes {int num_regs; int mask; int base; } ;
struct snd_soc_component {int val_bytes; int regmap; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmemdup (int ,int,int) ;
 int regmap_parse_val (int ,unsigned int*,unsigned int*) ;
 int regmap_raw_write (int ,int ,void*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct snd_soc_component* snd_kcontrol_chip (struct snd_kcontrol*) ;

int snd_soc_bytes_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 struct soc_bytes *params = (void *)kcontrol->private_value;
 int ret, len;
 unsigned int val, mask;
 void *data;

 if (!component->regmap || !params->num_regs)
  return -EINVAL;

 len = params->num_regs * component->val_bytes;

 data = kmemdup(ucontrol->value.bytes.data, len, GFP_KERNEL | GFP_DMA);
 if (!data)
  return -ENOMEM;






 if (params->mask) {
  ret = regmap_read(component->regmap, params->base, &val);
  if (ret != 0)
   goto out;

  val &= params->mask;

  switch (component->val_bytes) {
  case 1:
   ((u8 *)data)[0] &= ~params->mask;
   ((u8 *)data)[0] |= val;
   break;
  case 2:
   mask = ~params->mask;
   ret = regmap_parse_val(component->regmap,
       &mask, &mask);
   if (ret != 0)
    goto out;

   ((u16 *)data)[0] &= mask;

   ret = regmap_parse_val(component->regmap,
       &val, &val);
   if (ret != 0)
    goto out;

   ((u16 *)data)[0] |= val;
   break;
  case 4:
   mask = ~params->mask;
   ret = regmap_parse_val(component->regmap,
       &mask, &mask);
   if (ret != 0)
    goto out;

   ((u32 *)data)[0] &= mask;

   ret = regmap_parse_val(component->regmap,
       &val, &val);
   if (ret != 0)
    goto out;

   ((u32 *)data)[0] |= val;
   break;
  default:
   ret = -EINVAL;
   goto out;
  }
 }

 ret = regmap_raw_write(component->regmap, params->base,
          data, len);

out:
 kfree(data);

 return ret;
}
