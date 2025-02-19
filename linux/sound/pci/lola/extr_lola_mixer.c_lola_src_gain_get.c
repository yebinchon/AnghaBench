
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_7__ {unsigned short* value; } ;
struct TYPE_8__ {TYPE_3__ integer; } ;
struct snd_ctl_elem_value {TYPE_4__ value; } ;
struct TYPE_6__ {int src_mask; TYPE_1__* array; } ;
struct lola {TYPE_2__ mixer; } ;
struct TYPE_5__ {int * src_gain; int src_gain_enable; } ;


 int EINVAL ;
 unsigned int readl (int *) ;
 int readw (int *) ;
 struct lola* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int lola_src_gain_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct lola *chip = snd_kcontrol_chip(kcontrol);
 unsigned int ofs = kcontrol->private_value & 0xff;
 unsigned int count = (kcontrol->private_value >> 8) & 0xff;
 unsigned int mask, i;

 mask = readl(&chip->mixer.array->src_gain_enable);
 for (i = 0; i < count; i++) {
  unsigned int idx = ofs + i;
  unsigned short val;
  if (!(chip->mixer.src_mask & (1 << idx)))
   return -EINVAL;
  if (mask & (1 << idx))
   val = readw(&chip->mixer.array->src_gain[idx]) + 1;
  else
   val = 0;
  ucontrol->value.integer.value[i] = val;
 }
 return 0;
}
